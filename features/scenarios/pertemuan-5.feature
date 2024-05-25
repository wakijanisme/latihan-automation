Feature: Google search
  @search-google
  Scenario: saya berhasil mencari sesuatu di google.com
    Given saya berada di halaman google.com
    When saya mengetikan keyword "<keyword>"
    Then saya tekan enter
    Then saya berhasil mendapatkan hasil pencarian "<keyword>"

    Examples:
      | keyword  |
      | capybara |
      | selenium |