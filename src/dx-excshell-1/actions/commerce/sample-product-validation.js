/**
 * Sample function for Commerce Webhook demonstration.
 * 
 * Use Case:
 *  Rejects adding product "24-WG084" to cart because it's made with banned materials.
 *  
 * Simplified example simulates using an external service to check product against banned material list.
 */

async function main(params) {
    const product = params.product;
    const response = { statusCode: 200 };

    if (product.sku == '24-WG084') {
        response.body = JSON.stringify({
            op: 'exception',
            message: 'This product is not available for consumer purchase because it contains banned materials.'
        });
    } else {
        response.body = JSON.stringify({
            op: 'success'
        });
    }

    return response;
}

exports.main = main;
