function resetWorld(optns)
%-------------------------------------------------------------------------- 
% resetWorld()
% Calls Gazebo service to reset the world
% Input: (dict) optns
% Output: None
%-------------------------------------------------------------------------- 
    % disp('Resetting the world...');  % REDUNDANT
    
    % TODO: 01 Get robot handle
    r = optns{'rHandle'}; 
    
    % TODO: 02 Create Empty Simulation message
    rosservice type '/gazebo/reset_world';
    res_client = rossvcclient('/gazebo/reset_world','DataFormat','struct'); % instaniate the client 
    res_req = rosmessage(res_client);   % intantiate  message
    
    % TODO: 03 Call reset service
    call(res_client, res_req);

end