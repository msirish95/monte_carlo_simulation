function E = Pointenergy_cal_reori(S,ri,rj)
E=0;
delta=0;


if S(ri+1,rj)>1000
    delta=1;
else
    delta=0;
end

E=E+(1-delta);

if S(ri,rj+1)>1000
    delta=1;
else
    delta=0;
end

E=E+(1-delta);

if S(ri-1,rj)>1000
    delta=1;
else
    delta=0;
end

E=E+(1-delta);
if S(ri,rj-1)>1000
    delta=1;
else
    delta=0;
end

E=E+(1-delta);

if S(ri+1,rj+1)>1000
    delta=1;
else
    delta=0;
end

E=E+(1-delta);

if S(ri+1,rj-1)>1000
    delta=1;
else
    delta=0;
end

E=E+(1-delta);
if S(ri-1,rj-1)>1000
    delta=1;
else
    delta=0;
end

E=E+(1-delta);
if S(ri-1,rj+1)>1000
    delta=1;
else
    delta=0;
end

E=E+(1-delta);
end