const readline = require("readline");

const r1 = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

let arr = []; 

function Menu() {
    console.log("\n--ARRAY MENU--");
    console.log("1-Create");
    console.log("2-Read");
    console.log("3-Update");
    console.log("4-Delete");
    console.log("5-Exit");
    r1.question("Enter your choice (1-5): ", function(choice){
    switch (choice){
        case '1':
            r1.question("Enter the no of elements: ",function(n){
                arr=[]
                let i=0;
                function addElement(){
                    if (i<n){
                        r1.question("Enter element: ",function(val){
                            arr.push(val);
                            i++;
                            addElement();
                        });
                    }else{
                        console.log("Array created successfully");
                        console.log(arr);
                        Menu();
                    }
                }
                addElement();
            });
            break;
        case '2':
            console.log("Array:",arr);
            Menu();
            break;
        case '3':
            r1.question("Enter index to update: ",function(index){
                r1.question("Enter new value: ",function(value){
                    if(index>=0 && index<arr.length){
                        arr[index]=value;
                        console.log("Updated array: ",arr);
                    }else{
                        console.log("Invalid Index");
                    }
                    Menu();
                });
            });
            break;
        case '4':
             r1.question("Enter index to delete: ",function(index){
                    if(index>=0 && index<arr.length){
                        arr.splice(index,1);
                        console.log("Array after deletion: ",arr);
                    }else{
                        console.log("Invalid Index");
                    }
                    Menu();
                });
            break;
        case '5':
            console.log("Program ended");
            r1.close();
            break;
        default:
            console.log("Invalid choice");
            Menu();
    }
    });
}
Menu();
