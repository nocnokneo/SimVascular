BUILDDATE=`date +%F`

SV_TAR_FILE_PREFIX=REPLACEME_SV_TAR_FILE_PREFIX.${BUILDDATE}

#  tcl/tk 8.6
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_TCL* ]]; then
  echo "ARCHIVE_TCL"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_TCLTK_DIR.tar.gz REPLACEME_SV_TCLTK_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_TCLTK_DIR.tar.gz tar_output
fi

# python 2.7
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_PYTHON* ]]; then
  echo "ARCHIVE_PYTHON"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_PYTHON_DIR.tar.gz REPLACEME_SV_PYTHON_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_PYTHON_DIR.tar.gz tar_output
fi

# swig
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_SWIG* ]]; then
  echo "ARCHIVE_SWIG"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_SWIG_DIR.tar.gz REPLACEME_SV_SWIG_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_SWIG_DIR.tar.gz tar_output
fi

# numpy
# NOTE: is contained in PYTHON tar file!

# qt
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_QT* ]]; then
  echo "ARCHIVE_QT"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_QT_DIR.tar.gz REPLACEME_SV_QT_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_QT_DIR.tar.gz tar_output
fi

# freetype
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_FREETYPE* ]]; then
  echo "ARCHIVE_FREETYPE"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_FREETYPE_DIR.tar.gz REPLACEME_SV_FREETYPE_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_FREETYPE_DIR.tar.gz tar_output
fi

# gdcm
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_GDCM* ]]; then
  echo "ARCHIVE_GDCM"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_GDCM_DIR.tar.gz REPLACEME_SV_GDCM_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_GDCM_DIR.tar.gz tar_output
fi

# hdf5
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_HDF5* ]]; then
  echo "ARCHIVE_HDF5"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_HDF5_DIR.tar.gz REPLACEME_SV_HDF5_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_HDF5_DIR.tar.gz tar_output
fi

# vtk
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_VTK* ]]; then
  echo "ARCHIVE_VTK"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_VTK_DIR.tar.gz REPLACEME_SV_VTK_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_VTK_DIR.tar.gz tar_output
fi

# itk
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_ITK* ]]; then
  echo "ARCHIVE_ITK"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_ITK_DIR.tar.gz REPLACEME_SV_ITK_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_ITK_DIR.tar.gz tar_output
fi

# opencascade
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_OPENCASCADE* ]]; then
  echo "ARCHIVE_OPENCASCADE"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_OPENCASCADE_DIR.tar.gz REPLACEME_SV_OPENCASCADE_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_OPENCASCADE_DIR.tar.gz tar_output
fi

# mmg
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_MMG* ]]; then
  echo "ARCHIVE_MMG"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_MMG_DIR.tar.gz REPLACEME_SV_MMG_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_MMG_DIR.tar.gz tar_output
fi

# mitk
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_MITK* ]]; then
  echo "ARCHIVE_MITK"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_MITK_DIR.tar.gz REPLACEME_SV_MITK_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_MITK_DIR.tar.gz tar_output
fi

