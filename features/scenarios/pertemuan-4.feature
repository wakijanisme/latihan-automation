Feature: login page

@pertemuan-4-1 @positive-case
  Scenario: sebagai user, saya berhasil login [page object]
    Given [page object] saya akses halaman automationexercise.com
    When [page object] saya click tombol sign in di homepage
    Then [page object] saya beralih ke halaman login
    When [page object] saya entry username "ogitest@gmail.com" di halaman login
    And [page object] saya entry password "Ogitest123" di halaman login
    And [page object] saya click tombol login di halaman login
    Then [page object] saya berhasil login

@pertemuan-4-2 @negative-case
  Scenario: sebagai user, saya gagal login ketika salah input username atau password[page object]
    Given [page object] saya akses halaman automationexercise.com
    When [page object] saya click tombol sign in di homepage
    Then [page object] saya beralih ke halaman login
    When [page object] saya entry username "asdogitest@gmail.com" di halaman login
    And [page object] saya entry password "asdOgitest123" di halaman login
    And [page object] saya click tombol login di halaman login
    #Then [page object] saya akan melihat pesan error "Your email or password is incorrect!"
    Then [page object] saya akan melihat pesan error email dan password salah