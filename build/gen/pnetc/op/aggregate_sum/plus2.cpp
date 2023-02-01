#include <pnetc/op/aggregate_sum/plus2.hpp>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <unistd.h>

namespace pnetc
{
  namespace op
  {
    namespace aggregate_sum
    {
      void plus2
        ( const int& value
        , int& sum
        )
      {
#line 21 "/home/juschei/Desktop/aggregate_sum/workflow/aggregate_sum.xpnet"

          std::cout << "Worker here!" << std::endl;
          
          // convert integer from token to string filename
          char buffer[4];
          snprintf(buffer, 4, "%03d", value);
          
          // build execution command for application
          //char skeleton[] = "echo $USER ";
          char skeleton[] = "/usr/bin/sage /home/juschei/Desktop/cnf_anf_gb/worker.sage.py --nr ";
          //char skeleton[] = "/usr/bin/python3 /home/juschei/Desktop/test.py --nr ";
          char logging_pipe[] = " 2> /home/juschei/Desktop/cnf_anf_gb/logs/";
          
          int command_size = 2*sizeof(buffer) + sizeof(skeleton) + sizeof(logging_pipe) + 2;
          char command[command_size];
          command[0] = '\0'; // to concat to the beginning without junk
          //test
          strcat(command, skeleton);
          strcat(command, buffer);
          strcat(command, logging_pipe);
          strcat(command, buffer);
          
          
          std::cout << command << std::endl;
          
          // execute command on system
          std::cout << system(command) << std::endl;
          //sleep(2);
        
      }
    }
  }
}