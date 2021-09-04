#include "encoding_iroha.h"
#include "iroha-tbl.h"

VALUE rb_mEncodingIroha;
int rb_encdb_replicate(const char *name, const char *orig);

void
Init_encoding_iroha(void)
{
  rb_mEncodingIroha = rb_define_module("EncodingIroha");
  rb_encdb_replicate("IROHA", "ASCII-8BIT");
  rb_register_transcoder(&rb_from_IROHA);
  rb_register_transcoder(&rb_to_IROHA);
}
