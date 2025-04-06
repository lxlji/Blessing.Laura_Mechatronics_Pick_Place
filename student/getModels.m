function models = getModels(optns)
%-------------------------------------------------------------------------- 
% getModels
% This method will create an action client that talks to Gazebo's
% get_world_properties to get all models.
%
% Inputs: (dict) optns
% Output: (gazebo_msgs/GetWorldPropertiesResponse cell): models
%--------------------------------------------------------------------------
    % TODO: 01 Get robot handle
    r = optns{'rHandle'};
    
    % TODO: 02 Create model_client_msg 
    model_client = rossvcclient('/gazebo/get_world_properties', 'DataFormat','struct');
    model_req = rosmessage(model_client);
    
    % TODO: 03 Call client 
    models = call(model_client,model_req);


end