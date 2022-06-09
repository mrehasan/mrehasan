function primefinder(){

const number = parseInt(prompt("Input Any Number "));
        let a = true;

        if (number === 1) {
            document.write("1 is not prime number");
        } else if (number > 1) {


            for (let i = 2; i < number; i++) {
                if (number % i == 0) {
                    a = false;
                    break;
                }
            }

            if (a) {
                document.write(`${number} : is Prime Number`);
            } else {
                document.write(`${number} : is Not a Prime Number`);
            }
        } else {
            document.write("The Number is Not a Prime Number.");
        }
    }
    primefinder();