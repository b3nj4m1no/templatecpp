# 👨‍💻 Personal Templates for C++ (3.0)

## How to build

- Create `main.cpp` and fill it with this source:
  ```cpp
  #include <iostream>
  using namespace std;

  // Consegna

  int main() {
    // Dichiarazione delle variabili

    // Input

    // Logica del programma

    // Output

    system("PAUSE");
  }
  ```

- Now we need to create a `$profile` for `PowerShell`

  ```
  md C:\Users\yourUser\Documents\WindowsPowerShell
  cd C:\Users\yourUser\Documents\WindowsPowerShell
  type nul > Microsoft.PowerShell_profile.ps1
  ```
- Open `Microsoft.PowerShell_profile.ps1` and type this source:
  ```
  function Copy-CppFile {
    param (
        [string]$SourcePath = "ABSOLUTE PATH OF TEMPLATE.CPP"
    )
    Copy-Item -Path $SourcePath -Destination .\
  }

  Set-Alias -Name templatecpp -Value Copy-CppFile
  ```
  
- If now by writing $profile in powershell you get a path, you're done!
  
  ![PowerShell WannaBe](https://i.postimg.cc/zfhq47Lf/powershell8.png)

- If your powershell gives strange errors, run this command:
  ```
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

## How to run

- Open your project folder in anyone terminal
- Digit `templatecpp` to generate a Template in current folder called `main.cpp`
  
  ![Template Example](https://i.postimg.cc/3xJsgBjq/template.png)
