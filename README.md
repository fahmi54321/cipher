# Substitution Cipher & Language Model

Proyek ini membahas **dekripsi substitution cipher** menggunakan konsep **probabilistic modelling** dan **language model**.  
Tujuannya adalah memahami bagaimana model probabilistik dapat membantu memecahkan pesan terenkripsi.

---

## 1. Substitution Cipher

- Setiap huruf diganti dengan huruf lain melalui **pemetaan satu-ke-satu**.
- **Pengirim**: mengenkripsi pesan (plaintext) → ciphertext.
- **Penerima**: mendekripsi ciphertext dengan pemetaan terbalik.
- **Mata-mata**: tidak tahu pemetaan, sehingga perlu metode probabilistik untuk menebak.

**Contoh:**

- Plaintext: `SAYA`
- Ciphertext (mapping tertentu): `YWYR`
- Setelah didekripsi kembali: `SAYA`

---

## 2. Language Model

Model bahasa memberi:

- **Probabilitas tinggi** pada kata/kalimat nyata.
- **Probabilitas rendah** pada kata/kalimat tidak masuk akal.

**Contoh:**

- `SAYA` → probabilitas tinggi
- `YWYR` → probabilitas rendah

---

## 3. N-grams & Markov Model

- **N-gram**: urutan huruf/token.

  - Unigram = 1 huruf
  - Bigram = 2 huruf
  - Trigram = 3 huruf

- **Asumsi Markov**: huruf sekarang hanya bergantung pada huruf sebelumnya.
  - Contoh kata `CAT` → bigram: `CA`, `AT`
  - Probabilitas:
    - p(A|C) = peluang A setelah C
    - p(T|A) = peluang T setelah A

## Dataset & API

- **Dataset**: [Link](https://raw.githubusercontent.com/fahmi54321/cipher_api/refs/heads/main/moby_dick.txt)
- **API**: [Link](https://github.com/fahmi54321/cipher_api.git)

---

## Teori

- **Deskripsi Cipher**
- **Part 1**: [Link](https://medium.com/@fahmiabdulaziz44/dekripsi-cipher-part-1-9e5e516dd6b8)
- **Part 2**: [Link](https://medium.com/@fahmiabdulaziz44/dekripsi-cipher-part-2-9749162e2a8d)
- **Part 3**: [Link](https://medium.com/@fahmiabdulaziz44/dekripsi-cipher-part-3-c5923d29d6d5)
- **Part 4**: [Link](https://medium.com/@fahmiabdulaziz44/dekripsi-cipher-part-4-a78648fdcd8a)
- **Algoritma Genetika**:
- **Part 1**: [Link](https://medium.com/@fahmiabdulaziz44/algoritma-genetika-part-1-0bf3c56a8fc8)
- **Part 2**: [Link](https://medium.com/@fahmiabdulaziz44/algoritma-genetika-part-2-34fe9cbfcc15)
