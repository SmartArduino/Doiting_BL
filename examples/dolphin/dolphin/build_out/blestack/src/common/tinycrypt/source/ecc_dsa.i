# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dsa.c"
# 1 "/b-l/dolphin/build_out/blestack//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dsa.c"
# 56 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dsa.c"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/constants.h" 1
# 46 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/constants.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 47 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/constants.h" 2
# 57 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dsa.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h" 1
# 74 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 1 3 4
# 11 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 3 4
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 1 3 4
# 34 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4

# 34 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 2 3 4
# 75 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h" 2
# 89 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"

# 89 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
typedef int8_t wordcount_t;
typedef int16_t bitcount_t;

typedef int8_t cmpresult_t;

typedef unsigned int uECC_word_t;

typedef uint64_t uECC_dword_t;
# 110 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
struct uECC_Curve_t;
typedef const struct uECC_Curve_t * uECC_Curve;
struct uECC_Curve_t {
  wordcount_t num_words;
  wordcount_t num_bytes;
  bitcount_t num_n_bits;
  uECC_word_t p[8];
  uECC_word_t n[8];
  uECC_word_t G[8 * 2];
  uECC_word_t b[8];
  void (*double_jacobian)(uECC_word_t * X1, uECC_word_t * Y1, uECC_word_t * Z1,
 uECC_Curve curve);
  void (*x_side)(uECC_word_t *result, const uECC_word_t *x, uECC_Curve curve);
  void (*mmod_fast)(uECC_word_t *result, uECC_word_t *product);
};
# 133 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void double_jacobian_default(uECC_word_t * X1, uECC_word_t * Y1,
        uECC_word_t * Z1, uECC_Curve curve);







void x_side_default(uECC_word_t *result, const uECC_word_t *x,
      uECC_Curve curve);







void vli_mmod_fast_secp256r1(unsigned int *result, unsigned int *product);
# 161 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
static const struct uECC_Curve_t curve_secp256r1 = {
 8,
 (4*8),
 256, {
  0xFFFFFFFF, 0xFFFFFFFF,
  0xFFFFFFFF, 0x00000000,
         0x00000000, 0x00000000,
         0x00000001, 0xFFFFFFFF
 }, {
  0xFC632551, 0xF3B9CAC2,
             0xA7179E84, 0xBCE6FAAD,
             0xFFFFFFFF, 0xFFFFFFFF,
             0x00000000, 0xFFFFFFFF
 }, {
  0xD898C296, 0xF4A13945,
                0x2DEB33A0, 0x77037D81,
                0x63A440F2, 0xF8BCE6E5,
                0xE12C4247, 0x6B17D1F2,

                0x37BF51F5, 0xCBB64068,
                0x6B315ECE, 0x2BCE3357,
                0x7C0F9E16, 0x8EE7EB4A,
                0xFE1A7F9B, 0x4FE342E2
 }, {
  0x27D2604B, 0x3BCE3C3E,
                0xCC53B0F6, 0x651D06B0,
                0x769886BC, 0xB3EBBD55,
                0xAA3A93E7, 0x5AC635D8
 },
        &double_jacobian_default,
        &x_side_default,
        &vli_mmod_fast_secp256r1
};

uECC_Curve uECC_secp256r1(void);
# 205 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
int uECC_generate_random_int(uECC_word_t *random, const uECC_word_t *top,
        wordcount_t num_words);
# 225 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
typedef int(*uECC_RNG_Function)(uint8_t *dest, unsigned int size);
# 237 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_set_rng(uECC_RNG_Function rng_function);





uECC_RNG_Function uECC_get_rng(void);






int uECC_curve_private_key_size(uECC_Curve curve);






int uECC_curve_public_key_size(uECC_Curve curve);
# 266 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
int uECC_compute_public_key(const uint8_t *private_key,
       uint8_t *public_key, uECC_Curve curve);
# 276 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t EccPoint_compute_public_key(uECC_word_t *result,
     uECC_word_t *private_key, uECC_Curve curve);
# 288 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t regularize_k(const uECC_word_t * const k, uECC_word_t *k0,
    uECC_word_t *k1, uECC_Curve curve);
# 302 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void EccPoint_mult(uECC_word_t * result, const uECC_word_t * point,
     const uECC_word_t * scalar, const uECC_word_t * initial_Z,
     bitcount_t num_bits, uECC_Curve curve);







uECC_word_t uECC_vli_isZero(const uECC_word_t *vli, wordcount_t num_words);







uECC_word_t EccPoint_isZero(const uECC_word_t *point, uECC_Curve curve);
# 329 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
cmpresult_t uECC_vli_cmp(const uECC_word_t *left, const uECC_word_t *right,
    wordcount_t num_words);
# 340 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
cmpresult_t uECC_vli_cmp_unsafe(const uECC_word_t *left, const uECC_word_t *right,
    wordcount_t num_words);
# 353 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modSub(uECC_word_t *result, const uECC_word_t *left,
       const uECC_word_t *right, const uECC_word_t *mod,
       wordcount_t num_words);
# 367 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void XYcZ_add(uECC_word_t * X1, uECC_word_t * Y1, uECC_word_t * X2,
       uECC_word_t * Y2, uECC_Curve curve);
# 377 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void apply_z(uECC_word_t * X1, uECC_word_t * Y1, const uECC_word_t * const Z,
      uECC_Curve curve);
# 389 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t uECC_vli_testBit(const uECC_word_t *vli, bitcount_t bit);
# 398 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_mmod(uECC_word_t *result, uECC_word_t *product,
     const uECC_word_t *mod, wordcount_t num_words);
# 408 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modMult_fast(uECC_word_t *result, const uECC_word_t *left,
      const uECC_word_t *right, uECC_Curve curve);
# 420 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t uECC_vli_sub(uECC_word_t *result, const uECC_word_t *left,
    const uECC_word_t *right, wordcount_t num_words);
# 430 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t uECC_vli_equal(const uECC_word_t *left, const uECC_word_t *right,
      wordcount_t num_words);
# 441 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modMult(uECC_word_t *result, const uECC_word_t *left,
        const uECC_word_t *right, const uECC_word_t *mod,
               wordcount_t num_words);
# 454 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modInv(uECC_word_t *result, const uECC_word_t *input,
       const uECC_word_t *mod, wordcount_t num_words);







void uECC_vli_set(uECC_word_t *dest, const uECC_word_t *src,
    wordcount_t num_words);
# 476 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modAdd(uECC_word_t *result, const uECC_word_t *left,
           const uECC_word_t *right, const uECC_word_t *mod,
          wordcount_t num_words);







bitcount_t uECC_vli_numBits(const uECC_word_t *vli,
       const wordcount_t max_words);






void uECC_vli_clear(uECC_word_t *vli, wordcount_t num_words);
# 505 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
int uECC_valid_point(const uECC_word_t *point, uECC_Curve curve);
# 521 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
int uECC_valid_public_key(const uint8_t *public_key, uECC_Curve curve);







void uECC_vli_nativeToBytes(uint8_t *bytes, int num_bytes,
           const unsigned int *native);







void uECC_vli_bytesToNative(unsigned int *native, const uint8_t *bytes,
       int num_bytes);
# 58 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dsa.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc_dsa.h" 1
# 81 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc_dsa.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h" 1
# 82 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc_dsa.h" 2
# 105 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc_dsa.h"
int uECC_sign(const uint8_t *p_private_key, const uint8_t *p_message_hash,
       unsigned p_hash_size, uint8_t *p_signature, uECC_Curve curve);
# 132 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc_dsa.h"
int uECC_verify(const uint8_t *p_public_key, const uint8_t *p_message_hash,
  unsigned int p_hash_size, const uint8_t *p_signature, uECC_Curve curve);
# 59 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dsa.c" 2




static uECC_RNG_Function g_rng_function = 0;


static void bits2int(uECC_word_t *native, const uint8_t *bits,
       unsigned bits_size, uECC_Curve curve)
{
 unsigned num_n_bytes = ((curve->num_n_bits + 7) / 8);
 unsigned num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));
 int shift;
 uECC_word_t carry;
 uECC_word_t *ptr;

 if (bits_size > num_n_bytes) {
  bits_size = num_n_bytes;
 }

 uECC_vli_clear(native, num_n_words);
 uECC_vli_bytesToNative(native, bits, bits_size);
 if (bits_size * 8 <= (unsigned)curve->num_n_bits) {
  return;
 }
 shift = bits_size * 8 - curve->num_n_bits;
 carry = 0;
 ptr = native + num_n_words;
 while (ptr-- > native) {
  uECC_word_t temp = *ptr;
  *ptr = (temp >> shift) | carry;
  carry = temp << (32 - shift);
 }


 if (uECC_vli_cmp_unsafe(curve->n, native, num_n_words) != 1) {
  uECC_vli_sub(native, native, curve->n, num_n_words);
 }
}

int uECC_sign_with_k(const uint8_t *private_key, const uint8_t *message_hash,
       unsigned hash_size, uECC_word_t *k, uint8_t *signature,
       uECC_Curve curve)
{

 uECC_word_t tmp[8];
 uECC_word_t s[8];
 uECC_word_t *k2[2] = {tmp, s};
 uECC_word_t p[8 * 2];
 uECC_word_t carry;
 wordcount_t num_words = curve->num_words;
 wordcount_t num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));
 bitcount_t num_n_bits = curve->num_n_bits;


   if (uECC_vli_isZero(k, num_words) ||
     uECC_vli_cmp(curve->n, k, num_n_words) != 1) {
  return 0;
 }

 carry = regularize_k(k, tmp, s, curve);
 EccPoint_mult(p, curve->G, k2[!carry], 0, num_n_bits + 1, curve);
 if (uECC_vli_isZero(p, num_words)) {
  return 0;
 }



 if (!g_rng_function) {
  uECC_vli_clear(tmp, num_n_words);
  tmp[0] = 1;
 }
 else if (!uECC_generate_random_int(tmp, curve->n, num_n_words)) {
  return 0;
 }



 uECC_vli_modMult(k, k, tmp, curve->n, num_n_words);
 uECC_vli_modInv(k, k, curve->n, num_n_words);
 uECC_vli_modMult(k, k, tmp, curve->n, num_n_words);

 uECC_vli_nativeToBytes(signature, curve->num_bytes, p);


 uECC_vli_bytesToNative(tmp, private_key, ((curve->num_n_bits + 7) / 8));

 s[num_n_words - 1] = 0;
 uECC_vli_set(s, p, num_words);
 uECC_vli_modMult(s, tmp, s, curve->n, num_n_words);

 bits2int(tmp, message_hash, hash_size, curve);
 uECC_vli_modAdd(s, tmp, s, curve->n, num_n_words);
 uECC_vli_modMult(s, s, k, curve->n, num_n_words);
 if (uECC_vli_numBits(s, num_n_words) > (bitcount_t)curve->num_bytes * 8) {
  return 0;
 }

 uECC_vli_nativeToBytes(signature + curve->num_bytes, curve->num_bytes, s);
 return 1;
}

int uECC_sign(const uint8_t *private_key, const uint8_t *message_hash,
       unsigned hash_size, uint8_t *signature, uECC_Curve curve)
{
       uECC_word_t _random[2*8];
       uECC_word_t k[8];
       uECC_word_t tries;

 for (tries = 0; tries < 64; ++tries) {

  uECC_RNG_Function rng_function = uECC_get_rng();
  if (!rng_function ||
      !rng_function((uint8_t *)_random, 2*8*4)) {
   return 0;
  }


  uECC_vli_mmod(k, _random, curve->n, ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8)));

  if (uECC_sign_with_k(private_key, message_hash, hash_size, k, signature,
      curve)) {
   return 1;
  }
 }
 return 0;
}

static bitcount_t smax(bitcount_t a, bitcount_t b)
{
 return (a > b ? a : b);
}

int uECC_verify(const uint8_t *public_key, const uint8_t *message_hash,
  unsigned hash_size, const uint8_t *signature,
         uECC_Curve curve)
{

 uECC_word_t u1[8], u2[8];
 uECC_word_t z[8];
 uECC_word_t sum[8 * 2];
 uECC_word_t rx[8];
 uECC_word_t ry[8];
 uECC_word_t tx[8];
 uECC_word_t ty[8];
 uECC_word_t tz[8];
 const uECC_word_t *points[4];
 const uECC_word_t *point;
 bitcount_t num_bits;
 bitcount_t i;

 uECC_word_t _public[8 * 2];
 uECC_word_t r[8], s[8];
 wordcount_t num_words = curve->num_words;
 wordcount_t num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));

 rx[num_n_words - 1] = 0;
 r[num_n_words - 1] = 0;
 s[num_n_words - 1] = 0;

 uECC_vli_bytesToNative(_public, public_key, curve->num_bytes);
 uECC_vli_bytesToNative(_public + num_words, public_key + curve->num_bytes,
          curve->num_bytes);
 uECC_vli_bytesToNative(r, signature, curve->num_bytes);
 uECC_vli_bytesToNative(s, signature + curve->num_bytes, curve->num_bytes);


 if (uECC_vli_isZero(r, num_words) || uECC_vli_isZero(s, num_words)) {
  return 0;
 }


 if (uECC_vli_cmp_unsafe(curve->n, r, num_n_words) != 1 ||
     uECC_vli_cmp_unsafe(curve->n, s, num_n_words) != 1) {
  return 0;
 }


 uECC_vli_modInv(z, s, curve->n, num_n_words);
 u1[num_n_words - 1] = 0;
 bits2int(u1, message_hash, hash_size, curve);
 uECC_vli_modMult(u1, u1, z, curve->n, num_n_words);
 uECC_vli_modMult(u2, r, z, curve->n, num_n_words);


 uECC_vli_set(sum, _public, num_words);
 uECC_vli_set(sum + num_words, _public + num_words, num_words);
 uECC_vli_set(tx, curve->G, num_words);
 uECC_vli_set(ty, curve->G + num_words, num_words);
 uECC_vli_modSub(z, sum, tx, curve->p, num_words);
 XYcZ_add(tx, ty, sum, sum + num_words, curve);
 uECC_vli_modInv(z, z, curve->p, num_words);
 apply_z(sum, sum + num_words, z, curve);


 points[0] = 0;
 points[1] = curve->G;
 points[2] = _public;
 points[3] = sum;
 num_bits = smax(uECC_vli_numBits(u1, num_n_words),
 uECC_vli_numBits(u2, num_n_words));

 point = points[(!!uECC_vli_testBit(u1, num_bits - 1)) |
                       ((!!uECC_vli_testBit(u2, num_bits - 1)) << 1)];
 uECC_vli_set(rx, point, num_words);
 uECC_vli_set(ry, point + num_words, num_words);
 uECC_vli_clear(z, num_words);
 z[0] = 1;

 for (i = num_bits - 2; i >= 0; --i) {
  uECC_word_t index;
  curve->double_jacobian(rx, ry, z, curve);

  index = (!!uECC_vli_testBit(u1, i)) | ((!!uECC_vli_testBit(u2, i)) << 1);
  point = points[index];
  if (point) {
   uECC_vli_set(tx, point, num_words);
   uECC_vli_set(ty, point + num_words, num_words);
   apply_z(tx, ty, z, curve);
   uECC_vli_modSub(tz, rx, tx, curve->p, num_words);
   XYcZ_add(tx, ty, rx, ry, curve);
   uECC_vli_modMult_fast(z, z, tz, curve);
  }
   }

 uECC_vli_modInv(z, z, curve->p, num_words);
 apply_z(rx, ry, z, curve);


 if (uECC_vli_cmp_unsafe(curve->n, rx, num_n_words) != 1) {
  uECC_vli_sub(rx, rx, curve->n, num_n_words);
 }


 return (int)(uECC_vli_equal(rx, r, num_words) == 0);
}
