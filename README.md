# Turtlebot_Mapping
- **State machine with the turtle, there are two ways to operate the robot manually or automatically. If the manual way is chosen, it can be controlled from the keyboard, but with the automatic way there are two missions, the first is to move through three points from a preset map and the second mission is to return to the entry point (home). All through a state machine for control and asynchronous processes such as obstacle detection with point cloud and robot movement.**
- **Instructions to run the code**

   ### Step 1: Install package, remove, the build, devel, install folders, and then run the following lines and compile.
   - Create a [catkin](http://wiki.ros.org/catkin#Installing_catkin) workspace
   ```bash
   mkdir -p ~/catkin_ws/src
   cd ~/catkin_ws/src/
   ```
   - Clone the repo (https://github.com/EdisonAltamirano/Turtlebot_Mapping) into 'catkin_ws/src/'
   ```bashrc
   git clone https://github.com/EdisonAltamirano/Turtlebot_Mapping
   cd Turtlebot_Mapping/
   ```
   - Make sure all dependent packages are installed.
   ```bash
  catkin_init_workspace
  cd ..
  catkin_make clean
  catkin_make -DCATKIN_ENABLE_TESTING=False -DCMAKE_BUILD_TYPE=Release
  catkin_make install
  echo "source ~/Turtlebot_Mapping/devel/setup.bash" >> ~/.bashrc
  source ~/.bashrc
 
  ```
    ### Step 2: Run the program  Turtlebot_Mapping/src/mymission/launch/mymission_sim.launch.
<p align="center">
  <img src="https://github.com/EdisonAltamirano/Turtlebot_Mapping/blob/master/src/docs/Turtlebot.jpeg" width="550" height="400" align="center"/>
</p>


