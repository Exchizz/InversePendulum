function [ output ] = rotation( theta )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    output = [cos(theta) -sin(theta); sin(theta) cos(theta)];
end

