module.exports = Prime => {
  Prime.isPrime = (number, cb) => {
    process.nextTick(function() {
      let isPrime = true;
      let num = parseInt(number);
      for(let i = 2; i < num; i++){
        if(num % i === 0){
          isPrime = false;
        }
      }
      cb(null, isPrime);
    });
  };
};
