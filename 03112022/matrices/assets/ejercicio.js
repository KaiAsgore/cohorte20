let arr1 =[[2,5,6],
           [5,9,7],
           [6,4,3]];

let arr2 = [[5,3,2],
            [8,5,4],
            [1,4,9]];



let arr3=[];

for (let i = 0; i <=2; i++) {
    for (let j = 0; j<=2; j++) {
            arr3.push(arr1[i][j]*arr2[i][j]);
            console.log(arr3)
    }
}