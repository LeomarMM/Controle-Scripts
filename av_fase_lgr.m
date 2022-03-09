function [K, pc] = av_fase_lgr(Z, P, s, zc)

Z = [Z zc];
%Cálculo de Contribuição de Fase
P_ang = sum(angle(s-Z)) - sum(angle(s-P));
pc = real(s) - imag(s)/tan(P_ang);
P = [P pc]; %Adiciona polo compensador na lista de polos

%Cálculo de Ganho
K = prod(abs(s-Z))\prod(abs(s-P)); %|KG(s)H(s)|=1

end