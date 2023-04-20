// Module definition for the traffic light system
module traffic_light (input clk, input pedestrian_button, output reg walk);
   // State register to keep track of the state of the state machine
   reg [1:0] state;

   // Always block to describe the state transitions of the state machine
   always @ (posedge clk)
      // Case statement to specify the next state based on the current state
      case (state)
         // If the current state is 2'b00, the next state is 2'b01
         2'b00: state = 2'b01;
         // If the current state is 2'b01, the next state is 2'b10
         2'b01: state = 2'b10;
         // If the current state is 2'b10, the next state is 2'b00
         2'b10: state = 2'b00;
      // End of the case statement
      endcase

   // Always block to describe the behavior of the walk signal
   always @ (state)
      // Case statement to specify the value of the walk signal based on the current state
      case (state)
         // If the current state is 2'b00, the walk signal is 1'b0
         2'b00: walk = 1'b0;
         // If the current state is 2'b01, the walk signal is 1'b0
         2'b01: walk = 1'b0;
         // If the current state is 2'b10, the walk signal is 1'b1
         2'b10: walk = 1'b1;
      // End of the case statement
      endcase
// End of the module definition
endmodule
