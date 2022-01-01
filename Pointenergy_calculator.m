function E = Pointenergy_calculator(S,ri,rj)
E=0;
delta=0;


if S(ri,rj)==S(ri+1,rj)
    delta=1;
else
    delta=0;
end

E=E+(1-delta);

if S(ri,rj)==S(ri,rj+1)
    delta=1;
else
    delta=0;
end

E=E+(1-delta);

if S(ri,rj)==S(ri-1,rj)
    delta=1;
else
    delta=0;
end

E=E+(1-delta);
if S(ri,rj)==S(ri,rj-1)
    delta=1;
else
    delta=0;
end

E=E+(1-delta);

if S(ri,rj)==S(ri+1,rj+1)
    delta=1;
else
    delta=0;
end

E=E+(1-delta);

if S(ri,rj)==S(ri+1,rj-1)
    delta=1;
else
    delta=0;
end

E=E+(1-delta);
if S(ri,rj)==S(ri-1,rj-1)
    delta=1;
else
    delta=0;
end

E=E+(1-delta);
if S(ri,rj)==S(ri-1,rj+1)
    delta=1;
else
    delta=0;
end

E=E+(1-delta);
end