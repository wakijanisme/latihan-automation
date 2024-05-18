Feature: login page

  Background: user akses halaman login
    Given saya akses halaman automationexercise.com
    When saya click tombol sign in di homepage
    Then saya beralih ke halaman login

  @pertemuan-3
  Scenario: sebagai user, saya berhasil login
        # Given saya akses halaman automationexercise.com
        # When saya click tombol sign in di homepage
        # Then saya beralih ke halaman login
    When saya entry username di halaman login
    And saya entry username di halaman login
    And saya click tombol login di halaman login
    Then saya berhasil login

  @pertemuan-3-1
  Scenario: sebagai user, saya berhasil login (parsing parameter)
        # Given saya akses halaman automationexercise.com
        # When saya click tombol sign in di homepage
        # Then saya beralih ke halaman login
    When saya entry username "ogitest@gmail.com" di halaman login
    And saya entry password "Ogitest123" di halaman login
    And saya click tombol login di halaman login
    Then saya berhasil login

  @pertemuan-3-2
  Scenario: sebagai user, saya berhasil login (background)
    When saya entry username "ogitest@gmail.com" di halaman login
    And saya entry password "Ogitest123" di halaman login
    And saya click tombol login di halaman login
    Then saya berhasil login

  @pertemuan-3-2-1
  Scenario: sebagai user, saya berhasil login (background, --retry 2)
    When saya entry username "ASFogitest@gmail.com" di halaman login
    And saya entry password "Ogitest123" di halaman login
    And saya click tombol login di halaman login
    Then saya berhasil login

  @pertemuan-3-3
  Scenario Outline: sebagai user, saya berhasil login (example)
    When saya entry username "<username>" di halaman login
    And saya entry password "<password>" di halaman login
    And saya click tombol login di halaman login
    Then saya berhasil login

    Examples:
      | username                   | password    |
      | ogitest@gmail.com          | Ogitest123  |
      | ogitest2@gmail.com         | Password123 |
      | eritanurhanjuli5@gmail.com | erita123    |

  @pertemuan-3-4
  Scenario: sebagai user, saya berhasil login (data-table)
    Given saya memiliki data berikut:
      | username                   | password    |
      | ogitest@gmail.com          | Ogitest123  |
      | ogitest2@gmail.com         | Password123 |
      | eritanurhanjuli5@gmail.com | erita123    |
    When saya entry username di halaman login berdasarkan data diatas
    And saya entry password di halaman login berdasarkan data diatas
    And saya click tombol login di halaman login
    Then saya berhasil login

  @pertemuan-3-5
  Scenario Outline: sebagai user, saya berhasil login (example & datatable)
    Given saya memiliki data berikut (example):
      | username   | password   |
      | <username> | <password> |
    When saya entry username di halaman login berdasarkan data diatas (example)
    And saya entry password di halaman login berdasarkan data diatas (example)
    And saya click tombol login di halaman login
    Then saya berhasil login

    Examples:
      | username                   | password    |
      | ogitest@gmail.com          | Ogitest123  |
      | ogitest2@gmail.com         | Password123 |
      | eritanurhanjuli5@gmail.com | erita123    |
