const mysrv = function (srv) {
  srv.on("myFunctionName", function (req, res) {
    return `${new Date()} - date; ${req.data.msg} - our message`;
  });

  srv.impl(async function() {
    this.after('READ', 'ProductsSRV', productData => {
      const products = Array.isArray(productData) ? productData : [productData];
      products.forEach(product => {
        product.availability == 'stock' ? product.criticality = 1 : product.criticality = 2;
      })
    })
  })


};

module.exports = mysrv;
