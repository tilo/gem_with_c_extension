#include "gem_with_c_extension.h"

VALUE hello_from_c(VALUE self, VALUE name) {
  /* was a string provided? */
  if (RB_TYPE_P(name, T_STRING) == 1) {
    char *namePtr = RSTRING_PTR(name); /* if you want to access name; may not be null terminated */
    long name_len = RSTRING_LEN(name);
    VALUE result;

    /* instead of just doing "Hello world", let's print the name and it's length: */
    result = rb_sprintf("Hello %"PRIsVALUE", name length: %ld", name, name_len);
    return result;

  } else {
    rb_raise(rb_eTypeError, "ERROR in GemWithCExtension.hello_from_c_ext: please provide a string");
  }
}


VALUE rb_mGemWithCExtension = Qnil;

void Init_gem_with_c_extension(void) {
  rb_mGemWithCExtension = rb_define_module("GemWithCExtension");
  /*
    First parameter is self,
    see: https://rubyreferences.github.io/rubyref/advanced/extensions.html#class-and-module-definition

    the first parameter is a reference to the Ruby module containing the module function
    the second parameter is how we expose the C-function to Ruby
    the third parameter is what we call the C-function in this file
   */
  rb_define_module_function(rb_mGemWithCExtension, "hello_from_c_ext", hello_from_c, 1);
}
