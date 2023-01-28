using Gauntlet

port_name = "/dev/ttyUSB0"
baudrate = 9600

serial_port = initialize_gripper(port_name, baudrate)


open_gripper!(serial_port)

sleep(5)

close_gripper!(serial_port)

sleep(5)

deactivate_gripper!(serial_port)