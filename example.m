% Motive Tracker network configuration
% If the server is configured on its loopback address, set 127.0.0.1
% Otherwise, configure the address on 10.30.152.23
HOST_ADDR = '127.0.0.1';

optilink = Optilink(HOST_ADDR);
optilink.connect();

while true
    % Retrieve the drones
    drones = optilink.fetchOptitrackGroundTruth();

    % Print data
    if ~isempty(drones)
        % display(drones{1});
    end
end

