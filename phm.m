function ph = phm(qsi)
ph = 90 - atand(sqrt(-2*qsi^2 + sqrt(4*qsi^4+1))/(2*qsi));
end