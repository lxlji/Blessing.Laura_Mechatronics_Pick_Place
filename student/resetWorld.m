function resetWorld(optns)
%-------------------------------------------------------------------------- 
% resetWorld()
% Calls Gazebo service to reset the world
% Input: (dict) optns
% Output: None
%-------------------------------------------------------------------------- 
    disp('Resetting the world...');
    
    % TODO: 01 Get robot handle
    r = rosClassHandle_UR5e; 
    
    % TODO: 02 Create Empty Simulation message
    res_client = rossvcclient('/gazebo/reset_world','DataFormat','struct');% instanciate the client 
    res_req = rosmessage(res_client);   % intantiate  message
    
    % TODO: 03 Call reset service
    call(res_client, res_req)

end