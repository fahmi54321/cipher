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
