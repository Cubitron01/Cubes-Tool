hint "Humanity Hero";



_cubehum = player getVariable ["humanity",0];

_cubehum = _cubehum +10000;

player setVariable ["humanity",_cubehum,true];
						systemChat "<Admin Menu> Your Humanity is now +10k";