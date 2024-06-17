<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cryptographic Algorithms Cheat Sheet</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid #000;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    pre {
        background-color: #f0f0f0;
        padding: 10px;
        border-radius: 5px;
        overflow-x: auto;
    }
</style>
<table>
<thead>
  <tr>
    <th colspan="2">Category</th>
    <th>Algorithm</th>
    <th>Description</th>
  </tr></thead>
<tbody>
  <tr>
    <td colspan="2" rowspan="4">Public Key <br>Cryptography (PKC)</td>
    <td>RSA</td>
    <td>Widely used for secure data transmission. Based on the mathematical difficulty of factoring the product of two large prime numbers.</td>
  </tr>
  <tr>
    <td>DSA</td>
    <td>Used for digital signatures. Based on the mathematical problem of discrete logarithms.</td>
  </tr>
  <tr>
    <td>ECC</td>
    <td>Elliptic Curve Cryptography. Offers similar security to RSA with shorter key lengths, based on elliptic curve theory.</td>
  </tr>
  <tr>
    <td>Diffie-Hellman</td>
    <td>Used for secure key exchange. Based on the difficulty of computing discrete logarithms.</td>
  </tr>
  <tr>
    <td rowspan="7">Secret Key<br>Cryptography (SKC)</td>
    <td rowspan="5">Block <br>Ciphers<br></td>
    <td>AES</td>
    <td>Advanced Encryption Standard. Widely used block cipher with key sizes of 128, 192, or 256 bits.</td>
  </tr>
  <tr>
    <td>DES</td>
    <td>Data Encryption Standard. An older block cipher with a key size of 56 bits, considered insecure by modern standards.</td>
  </tr>
  <tr>
    <td>3DES</td>
    <td>Triple DES. An enhancement of DES that applies the DES algorithm three times to each data block.</td>
  </tr>
  <tr>
    <td>Blowfish</td>
    <td>A block cipher known for its speed and effectiveness. Variable key length from 32 to 448 bits.</td>
  </tr>
  <tr>
    <td>Twofish</td>
    <td>A successor to Blowfish, with a block size of 128 bits and key sizes up to 256 bits.</td>
  </tr>
  <tr>
    <td rowspan="2">Stream <br>Ciphers</td>
    <td>RC4</td>
    <td>A widely used stream cipher, though now considered insecure due to vulnerabilities.</td>
  </tr>
  <tr>
    <td>ChaCha20</td>
    <td>A modern stream cipher known for its speed and security, designed as an improvement over Salsa20.</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="4">Hash Functions</td>
    <td>MD5</td>
    <td>Message Digest Algorithm 5. Produces a 128-bit hash value, but considered broken and unsuitable for further use.</td>
  </tr>
  <tr>
    <td>SHA-1</td>
    <td>Secure Hash Algorithm 1. Produces a 160-bit hash value, but vulnerabilities have been found making it insecure.</td>
  </tr>
  <tr>
    <td>SHA-256</td>
    <td>Part of the SHA-2 family, produces a 256-bit hash value. Widely used and considered secure.</td>
  </tr>
  <tr>
    <td>SHA-3</td>
    <td>The latest member of the Secure Hash Algorithm family, using a different underlying structure (Keccak) and considered secure.</td>
  </tr>
</tbody>
</table>

<hr>

<table>
<tbody>
<tr>
<th>Basis of Comparison</th>
<th style="text-align: center">DES</th>
<th style="text-align: center"">AES</p></th>
</tr>
<tr>
<td>Developed</td>
<td>DES was developed in 1977</td>
<td>AES was developed in 2001</td>
</tr>
<tr>
<td>Full-Form</td>
<td>DES stands for Data Encryption Standard</td>
<td>AES stands for Advanced Encryption Standard</td>
</tr>
<tr>
<td>Principle</td>
<td>DES follows the principle of Feistel Structure</td>
<td>AES s based on the principle of Substitution and Permutation</td>
</tr>
<tr>
<td>Plaintext</td>
<td>The plaintext is of 64 bits.</td>
<td>The plaintext can be 128, 192, 256 bits.</td>
</tr>
<tr>
<td>Ciphertext</td>
<td>Generate Ciphertext of 64 bits</td>
<td>Can Generate Ciphertext of 128, 192, 256 bits</td>
</tr>
<tr>
<td>Key Length</td>
<td>The key length is 56 bits.</td>
<td>Key length can be 128, 192, 256 bits.</td>
</tr>
<tr>
<td>Rounds</td>
<td>DES contains a fixed number of rounds, i.e. 16</td>
<td>AES contains a variable number of rounds depending on the size of the input, i.e. 10 rounds for 128 bit, 12 rounds for 192 bit and 14 rounds for 256 bits</td>
</tr>
<tr>
<td>Security</td>
<td>DES is less secure and hardly used now</td>
<td>AES is much more secure than DES and is widely used nowadays.</td>
</tr>
<tr>
<td>Speed</td>
<td>DES is comparatively slower than AES</td>
<td>AES is faster than DES</td>
</tr>
</tbody>
</table>

</body>
</html>
