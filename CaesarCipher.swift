var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

//var secretMessage = "hello"
var secretMessage = "CodeCademy"
print(secretMessage)
secretMessage = secretMessage.lowercased()
print(secretMessage)

var message = Array(secretMessage)
print(message)

var encryString: String = ""

for i in stride(from: 0, to: message.count, by: 1) {
  for j in stride(from: 0, to: alphabet.count, by: 1) {
    if message[i] == alphabet[j] {
      //message[i] = alphabet[j + 3]
      message[i] = alphabet[(j + 3) % 26]

      encryString += String(message[i])
      break
    }
  }
}

print(message)
print(encryString)

