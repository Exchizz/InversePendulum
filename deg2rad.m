## Copyright (C) 2004 Andrew Collier <abcollier@users.sourceforge.net>
##
## This program is free software; you can redistribute it and/or modify it under
## the terms of the GNU General Public License as published by the Free Software
## Foundation; either version 3 of the License, or (at your option) any later
## version.
##
## This program is distributed in the hope that it will be useful, but WITHOUT
## ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
## FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
## details.
##
## You should have received a copy of the GNU General Public License along with
## this program; if not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {Function File} {} @var{anglout} = deg2rad(@var{anglin})
##
## Converts angles input in degrees to the equivalent in radians.
## @end deftypefn

## Author: Andrew Collier <abcollier@users.sourceforge.net>

function anglout = deg2rad(anglin)
  anglout = anglin * pi / 180;
endfunction

%!assert (deg2rad(180),pi,10*eps)
