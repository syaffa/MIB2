%showHeader     Display the mRCImage header
%
%   showHeader(mRCImage)
%
%   mRCImage    The MRCImage object.
%
%   Bugs: none known
%
% This file is part of PEET (Particle Estimation for Electron Tomography).
% Copyright 2000-2012 The Regents of the University of Colorado & BLD3EMC:
%           The Boulder Laboratory For 3D Electron Microscopy of Cells.
% See PEETCopyright.txt for more details.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  $Author: John Heumann $
%
%  $Date: 2012/01/12 17:22:51 $
%
%  $Revision: 04b6cb6df697 $
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function showHeader(mRCImage)

fprintf('# X:\t\t\t\t%d\n', mRCImage.header.nX);
fprintf('# Y:\t\t\t\t%d\n', mRCImage.header.nY);
fprintf('# Z:\t\t\t\t%d\n', mRCImage.header.nZ);
fprintf('mode:\t\t\t\t%d\n', mRCImage.header.mode);  
fprintf('X start:\t\t\t%d\n', mRCImage.header.nXStart);
fprintf('Y start:\t\t\t%d\n', mRCImage.header.nYStart);
fprintf('Z start:\t\t\t%d\n', mRCImage.header.nZStart);
fprintf('X intervals:\t\t\t%d\n', mRCImage.header.mX);
fprintf('Y intervals:\t\t\t%d\n', mRCImage.header.mY);
fprintf('Z intervals:\t\t\t%d\n', mRCImage.header.mZ);

fprintf('cell dimension X:\t\t%d angstroms\n', ...
        mRCImage.header.cellDimensionX);
fprintf('cell dimension Y:\t\t%d angstroms\n', ...
        mRCImage.header.cellDimensionY);
fprintf('cell dimension Z:\t\t%d angstroms\n', ...
        mRCImage.header.cellDimensionZ);  
fprintf('cell angle X:\t\t\t%d degrees\n', mRCImage.header.cellAngleX);
fprintf('cell angle Y:\t\t\t%d degrees\n', mRCImage.header.cellAngleY);
fprintf('cell angle Z:\t\t\t%d degrees\n', mRCImage.header.cellAngleZ);  

mapTable = ['X' 'Y' 'Z'];
fprintf('columns map to:\t\t\t%s\n', ...
        mapTable(mRCImage.header.mapColumns));
fprintf('rows map to:\t\t\t%s\n',  ...
        mapTable(mRCImage.header.mapRows));
fprintf('sections map to:\t\t%s\n',  ...
        mapTable(mRCImage.header.mapSections));

fprintf('minimum density:\t\t%d\n', mRCImage.header.minDensity);
fprintf('maximum density:\t\t%d\n', mRCImage.header.maxDensity);
fprintf('mean density:\t\t\t%d\n', mRCImage.header.meanDensity);
fprintf('rms density:\t\t\t%d\n', mRCImage.header.densityRMS);
fprintf('space group:\t\t\t%d\n', mRCImage.header.spaceGroup);

fprintf('# symmetry bytes:\t\t%d\n', mRCImage.header.nSymmetryBytes);

fprintf('# extended header bytes:\t%d\n', mRCImage.header.nBytesExtended);
fprintf('creator ID:\t\t\t%d\n', mRCImage.header.creatorID);
fprintf('Extended header bytes/section:\t%d\n',                 ...
  mRCImage.header.nBytesPerSection);
fprintf('Serial EM data type:\t\t%d\n', mRCImage.header.serialEMType);
fprintf('IMOD stamp: \t\t\t%d\n', mRCImage.header.imodStamp);
if mRCImage.header.imodStamp == defaultIMODStamp()
  fprintf('IMOD flags: \t\t\t%d\n', mRCImage.header.imodFlags);
end

fprintf('X origin:\t\t\t%d\n', mRCImage.header.xOrigin);
fprintf('Y origin:\t\t\t%d\n', mRCImage.header.yOrigin);
fprintf('Z origin:\t\t\t%d\n', mRCImage.header.zOrigin);
if all(mRCImage.header.map > 0) && all(mRCImage.header.map < 255)
  fprintf('map: \t\t\t\t%s\n', mRCImage.header.map);
end

fprintf('machine stamp: \t\t\t%d %d %d %d\n', mRCImage.header.machineStamp);
fprintf('# labels:\t\t\t%d\n', mRCImage.header.nLabels);
for iLabel = 1:mRCImage.header.nLabels
   fprintf('%s\n', mRCImage.header.labels(iLabel,:));
end
