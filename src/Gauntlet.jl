module Gauntlet

using LibSerialPort

function initialize_gripper(port_name::String, baudrate::Int)
    sp = LibSerialPort.open(port_name, baudrate)
    return sp 
end

function open_gripper!(sp)
    write(sp, 'o')
end

function close_gripper!(sp)
    write(sp, 'c')
end

function deactivate_gripper!(sp)
    close(sp)
end

export initialize_gripper,
       open_gripper!,
       close_gripper!,
       deactivate_gripper! 

end