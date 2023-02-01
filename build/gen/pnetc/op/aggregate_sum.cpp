#include <we/loader/macros.hpp>

#include <pnetc/op/aggregate_sum/plus2.hpp>

namespace pnetc
{
  namespace op
  {
    namespace aggregate_sum
    {
      static void plus2
        ( drts::worker::context *
        , expr::eval::context const&_pnetc_input
        , expr::eval::context&_pnetc_output
        , std::map<std::string, void*> const&
        )
      {
        const int & value (::boost::get< int > (_pnetc_input.value (std::list<std::string> (1, "value"))));
        int sum;
        ::pnetc::op::aggregate_sum::plus2 (value, sum);
        _pnetc_output.bind_and_discard_ref (std::list<std::string> (1, "sum"), sum);
      }
    }
  }
}
WE_MOD_INITIALIZE_START()
{
  WE_REGISTER_FUN_AS (::pnetc::op::aggregate_sum::plus2,"plus2");
}
WE_MOD_INITIALIZE_END()
