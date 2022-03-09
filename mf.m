function w = mf(T, ph)
syms ws
ReZ = real(zero(T));
ImZ = imag(zero(T));
ReP = real(pole(T));
ImP = imag(pole(T));
ex = 180 + sum(atan2d(ws + ImZ, - ReZ)) - sum(atan2d(ws + ImP, -ReP)) == ph;
w = double(vpasolve(ex));
end