#include "gem_with_c_extension.h"

VALUE rb_mGemWithCExtension;

void
Init_gem_with_c_extension(void)
{
  rb_mGemWithCExtension = rb_define_module("GemWithCExtension");
}
