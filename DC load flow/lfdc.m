for pacti = 1:length(busdata(:,1))
    pact(busdata(pacti,1))=(busdata(pacti,2)-busdata(pacti,3))/basemva;
end
for ix=2:length(Ybus(:,1))
    for jx=2:length(Ybus(1,:))
        Ybusn(ix-1,jx-1)=Ybus(ix,jx);
    end
end
deltas = inv(Ybusn./i)*pact'