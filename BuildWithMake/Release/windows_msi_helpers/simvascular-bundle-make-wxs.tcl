# Copyright (c) Stanford University, The Regents of the University of
#               California, and others.
#
# All Rights Reserved.
#
# See Copyright-SimVascular.txt for additional details.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject
# to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
# IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
# TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
# PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
# OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

set SV_VERSION [lindex $argv 0]
set SV_FULL_VER_NO [lindex $argv 1]
set SV_TIMESTAMP [lindex $argv 2]
set out_fn [lindex $argv 3]

set outfp [open $out_fn w]
fconfigure $outfp -translation lf

#set product_id [exec tmp/uuidgen.exe 1]
#set package_id [exec tmp/uuidgen.exe 1]
set upgrade_id [exec tmp/uuidgen.exe 1]

puts $outfp "<Wix xmlns=\"http://schemas.microsoft.com/wix/2006/wi\""
puts $outfp "     xmlns:bal=\"http://schemas.microsoft.com/wix/BalExtension\""
puts $outfp "     xmlns:util=\"http://schemas.microsoft.com/wix/UtilExtension\">"
puts $outfp ""
puts $outfp "  <Bundle Name=\"SimVascular Windows Installer (64-bit, svSolver not included)\" Version=\"$SV_FULL_VER_NO\" Manufacturer=\"simvascular.org\" UpgradeCode=\"$upgrade_id\" IconSourceFile=\"windows_msi_helpers/simvascular.ico\" AboutUrl=\"http://www.simvascular.org\">"
puts $outfp ""
puts $outfp "     <BootstrapperApplicationRef Id=\"WixStandardBootstrapperApplication.RtfLicense\">"
puts $outfp "        <bal:WixStandardBootstrapperApplication LicenseFile=\"License.rtf\" LogoFile=\"windows_installer_packages/msi-logo.png\" />"
puts $outfp "     </BootstrapperApplicationRef>"
puts $outfp ""
puts $outfp "      <util:RegistrySearch Root=\"HKLM\" Key=\"SOFTWARE\\Microsoft\\MPI\" Value=\"Version\" Variable=\"MSMPI_EXISTS\" Result=\"exists\" Win64=\"yes\" />"
puts $outfp "      <util:RegistrySearch Root=\"HKLM\" Key=\"SOFTWARE\\Microsoft\\MPI\" Value=\"Version\" Variable=\"MSMPI_VERSION\" Result=\"value\" Win64=\"yes\" />"
puts $outfp ""
puts $outfp "      <util:RegistrySearch Root=\"HKLM\" Key=\"SOFTWARE\\Microsoft\\DevDiv\\vc\\Servicing\\14.0\\RuntimeMinimum\" Value=\"Version\" Variable=\"MSVC_EXISTS\" Result=\"exists\" Win64=\"yes\"/>"
puts $outfp "      <util:RegistrySearch Root=\"HKLM\" Key=\"SOFTWARE\\Microsoft\\DevDiv\\vc\\Servicing\\14.0\\RuntimeMinimum\" Value=\"Version\" Variable=\"MSVC_VERSION\" Result=\"value\" Win64=\"yes\"/>"
puts $outfp ""
puts $outfp "     <Chain>"
puts $outfp ""
puts $outfp "     <ExePackage Id=\"Dependency1\" DisplayName=\"MSVC 2015 C++ Runtime Libraries\" SourceFile=\"windows_installer_packages/vcredist_x64-MSVC-2015-update-3.exe\" Vital=\"no\""
puts $outfp "         DetectCondition=\"(MSVC_EXISTS)\" Permanent=\"yes\""
puts $outfp "     />"
puts $outfp ""
puts $outfp "     <ExePackage Id=\"Dependency2\" DisplayName=\"MSVC 2013 C++ Runtime Libraries\" SourceFile=\"windows_installer_packages/vcredist_x64-MSVC-2013-update-4.exe\" Vital=\"no\""
puts $outfp "         DetectCondition=\"(MSVC_EXISTS)\" Permanent=\"yes\""
puts $outfp "     />"
puts $outfp ""
puts $outfp "     <ExePackage Id=\"Dependency3\" DisplayName=\"MSVC 2010 C++ Runtime Libraries\" SourceFile=\"windows_installer_packages/vcredist_x64-MSVC-2010.exe\" Vital=\"no\""
puts $outfp "         DetectCondition=\"(MSVC_EXISTS)\" Permanent=\"yes\""
puts $outfp "     />"
puts $outfp ""
puts $outfp "     <MsiPackage Id=\"MainPackage\" SourceFile=\"$SV_VERSION-$SV_TIMESTAMP-Windows-64bit.msi\" Vital=\"yes\" DisplayInternalUI=\"yes\"/>"
puts $outfp ""
puts $outfp "    </Chain>"
puts $outfp ""
puts $outfp "  </Bundle>"
puts $outfp ""
puts $outfp "</Wix>"

close $outfp
