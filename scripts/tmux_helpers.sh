#!/bin/bash


# TODO: Make this work with different workspaces
prep(){
tmux send-keys "source ~/workspaces/bwi_ws/devel/setup.zsh" C-m
tmux send-keys "roscd; cd ../src" C-m
}

four_up(){
tmux split-window
tmux split-window -v -t 0
tmux split-window -h -t 1
tmux split-window -h -t 2

}

tmux_ros(){
SESSION=$USER

tmux -2 new-session -d -s $SESSION
# Setup a window for ROS stuff
tmux new-window -t $SESSION:1 -n 'Sim'
four_up
tmux select-pane -t 0
prep
tmux send-keys "roscore"
tmux select-pane -t 1
prep
tmux select-pane -t 2
prep
tmux send-keys "rviz"
tmux select-pane -t 3
prep

#tmux new-window -t $SESSION:2 -n 'Real'
#four_up
#tmux select-pane -t 0
#prep
#tmux send-keys "hsrb_mode; openvpn_robot" C-m
#tmux select-pane -t 1
#prep
#tmux send-keys "hsrb_mode" C-m
#tmux send-keys "rviz"
#tmux select-pane -t 2
#prep
#tmux send-keys "hsrb_mode" C-m
#tmux select-pane -t 3
#prep
#tmux send-keys "hsrb_mode" C-m


tmux new-window -t $SESSION:2 -n 'IDE'
tmux split-window -h
tmux select-pane -t 0
prep
tmux send-keys "roscd"
tmux select-pane -t 1
prep
tmux send-keys "roscd"
# Set default window
tmux select-window -t $SESSION:1

# Attach to session
tmux -2 attach-session -t $SESSION
}
