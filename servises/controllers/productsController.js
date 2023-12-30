const registration = require('../models/registration');
const { Op, sequelize } = require('sequelize');
const products = require('../models/product')
const Specification = require('../models/specification')
const offer = require('../models/offer')
const multer = require('multer');
const path = require('path');


// const productsData = async (req, res) => {

//     const product_categories = req.body.product_categories;
//     const brand_name = req.body.brand_name;
//     const brand_id = req.body.brand_id;
//     const place = req.body.place;
//     const product_title = req.body.product_title;
//     const product_description = req.body.product_description;
//     const product_price = req.body.product_price;
//     const discount_price = req.body.discount_price;
//     const discount_percentes = req.body.discount_percentes;
//     const color = req.body.color;
//     const image_url = req.files['image_url'][0].filename;
//     const product_ad = req.body.product_ad;
//     const count_in_stock = req.body.count_in_stock;
//     const offer = req.body.offer;
//     const rating = req.body.rating;

//     try {
//         // Check if all required fields are provided
//         if (!product_categories || !brand_name || !brand_id || !place || !product_title || !product_description
//             || !product_price || !discount_price || !discount_percentes || !color || !image_url
//             || !product_ad || !count_in_stock || !offer || !rating) {
//             return res.status(400).json({ error: 'Missing required fields' });
//         }

//         // Create a new products 
//         const data = await products.create({
//             product_categories,
//             brand_name,
//             brand_id,
//             place,
//             product_title,
//             product_description,
//             product_price,
//             discount_price,
//             discount_percentes,
//             color,
//             image_url,
//             product_ad,
//             count_in_stock,
//             offer,
//             rating,
//         });

//         // Respond with the created banner
//         res.status(200).send(data);
//     } catch (error) {
//         console.error('Error creating carousel banner:', error);
//         res.status(500).json({ error: 'Internal Server Error' });
//     }

// }

// const getAllData = async (req, res) => {
//     try {
//         const data = await products.findAll()
//         if (!data) {
//             return res.status(404).json({ error: 'Banner not found' });
//         }

//         res.status(200).send(data);
//     } catch (error) {
//         console.error('Error fetching products data:', error);
//         res.status(500).json({ error: 'Internal Server Error' });
//     }
// }

// const fillterData = async (req, res) => {
//     try {
//         // Example query parameters: /api/products?product_categories=category&brand_name=brand1
//         const queryParameters = req.query;

//         // Build a filter object based on query parameters
//         const filter = {
//             [Op.or]: [],
//         };

//         // Check if product_categories is present and add it to the filter[Op.or] array
//         if (queryParameters.product_categories) {
//             filter[Op.or].push({ product_categories: queryParameters.product_categories });
//         }

//         // Check if brand_name is present and add it to the filter[Op.or] array
//         if (queryParameters.brand_name) {
//             filter[Op.or].push({ brand_name: queryParameters.brand_name });
//         }

//         if (queryParameters.discount_price) {
//             filter[Op.or].push({ discount_price: queryParameters.discount_price });
//         }

//         // Fetch products based on the filter
//         const data = await products.findAll({
//             where: filter,
//         });

//         // Respond with the filtered products
//         res.status(200).send(data);
//     } catch (error) {
//         console.error('Error fetching products:', error);
//         res.status(500).json({ error: 'Internal Server Error' });
//     }
// }

// // ***************************************************************

// const getDataById = async (req, res) => {
//     const productId = req.params.id;
//     try {
//         const data = await products.findOne({ where: { id: productId } })
//         if (!data) {
//             return res.status(404).json({ error: 'product not found' });
//         }

//         res.status(200).send(data);
//     } catch (error) {
//         console.error('Error fetching product by ID:', error);
//         res.status(500).json({ error: 'Internal Server Error' });
//     }
// }

// const productDeleteById = async (req, res) => {
//     const productId = req.params.product_id;

//     try {
//         // Find the banner by its ID and delete it
//         const deletedProducts = await products.destroy({ where: { product_id: productId } });

//         if (!deletedProducts) {
//             return res.status(404).json({ error: 'Product not found' });
//         }

//         // Respond with a success message
//         res.status(200).send({ id: productId, message: 'product deleted successfully' });
//     } catch (error) {
//         console.error('Error deleting product by ID:', error);
//         res.status(500).json({ error: 'Internal Server Error' });
//     }
// }

// const editProductById = async (req, res) => {
//     const productId = req.params.id;
//     const { product_categories,
//         brand_name,
//         brand_id,
//         place,
//         product_title,
//         product_description,
//         product_price,
//         discount_price,
//         discount_percentes,
//         color,
//         image_url,
//         product_ad,
//         count_in_stock,
//         offer,
//         rating, } = req.body;

//     try {
//         // Find the banner by its ID
//         const data = await products.findByPk(productId);

//         if (!data) {
//             return res.status(404).json({ error: 'Banner not found' });
//         }
//         // Update the banner's properties
//         await products.update({
//             product_categories,
//             brand_name,
//             brand_id,
//             place,
//             product_title,
//             product_description,
//             product_price,
//             discount_price,
//             discount_percentes,
//             color,
//             image_url,
//             product_ad,
//             count_in_stock,
//             offer,
//             rating,
//         }, {
//             where: {
//                 id: productId,
//             },
//         }
//         );

//         // Respond with the Product banner
//         const updatedData = await products.findByPk(productId);
//         res.status(200).json({ updatedProducts: updatedData, message: 'Products updated successfully' });
//     } catch (error) {
//         console.error('Error editing Product by ID:', error);
//         res.status(500).json({ error: 'Internal Server Error' });
//     }
// };


const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './uploads'); // Set the directory where uploaded files will be stored
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.originalname); // Set the file name
    },
});

const upload = multer({ storage: storage });

const Addproduct = async (req, res) => {
    try {
        upload.fields([{ name: 'product_thumnail_img', maxCount: 10 }, { name: 'ideal_for_img', maxCount: 10 }, { name: 'work_for_img', maxCount: 1 }])(req, res, (err) => {
            if (err) {
                return res.status(400).json({ message: 'File upload failed' });
            }

            // Access the uploaded files via req.files
            //   const productImage = req.files['product_img'][0];
            const thumbnailImage = req.files['product_thumnail_img'][0];
            const ideal_for_img = req.files['ideal_for_img'][0];
            const work_for_img = req.files['work_for_img'][0];
            const imageUrl = `uploads/${thumbnailImage.filename}`;
            const imageUrl_ideal_for_img = `uploads/${ideal_for_img.filename}`;
            const imageUrl_work_for_img = `uploads/${work_for_img.filename}`
            console.log(imageUrl_ideal_for_img, 'imageUrl_ideal_for_img')

            const ideal_for = [];
            ideal_for.push({
                ideal_for_title: req.body.ideal_for_title,
                ideal_for_img: imageUrl_ideal_for_img,
            });
            const product_work_for = [];
            product_work_for.push({
                work_for_title: req.body.work_for_title,
                work_for_img: imageUrl_work_for_img
            })

            // Create a new product record in the database
            const data = products.create({
                product_name: req.body.product_name,
                product_title: req.body.product_title,
                product_description: req.body.product_description,
                product_price: req.body.product_price,
                // product_img: productImage.filename, // Store the selected product image
                product_thumnail_img: imageUrl, // Store the selected thumbnail image
                product_ad: req.body.product_ad,
                offer: req.body.offer,
                count_in_stock: req.body.count_in_stock,
                rating: req.body.rating,
                discount: req.body.discount,
                highlights: req.body.highlights,
                ideal_for: ideal_for,
                product_work_for: product_work_for,
                product_expiry_date: req.body.product_expiry_date,
                product_categories: req.body.product_categories,
                brand_name: req.body.brand_name,
                brand_id: req.body.brand_id,
                place: req.body.place,

            });

            return res.json({ message: 'Product added successfully', data: data });
        });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
};

const getproduct = async (req, res) => {

    try {
        const limitedData = await products.findAll({
            include: [
                {
                    model: Specification, // Assuming you have a relationship between Products and Review
                },
                {
                    model: offer, // Assuming you have a relationship between Products and Review
                },
            ]
        });
        const product = limitedData.slice(0, 100).map((item) => item);

        return res.status(200).send({
            success: 'success',
            result: product,
        });

    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

const productdetail = async (req, res) => {
    try {
        const productId = req.params.productId;

        let product = await products.findOne({
            where: {
                product_id: productId
            },
            include: [
                {
                    model: Specification, // Assuming you have a relationship between Products and Review
                },
                {
                    model: offer, // Assuming you have a relationship between Products and Review
                },
            ]
        })

        product = JSON.parse(JSON.stringify(product))

        product.ideal_for = JSON.parse(JSON.stringify(product.ideal_for))


        return res.status(200).send({
            success: 'success',
            result: product,
        });


    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

const productDeleteById = async (req, res) => {
    const productId = req.params.product_id;

    try {
        // Find the banner by its ID and delete it
        const deletedProducts = await products.destroy({ where: { product_id: productId } });

        if (!deletedProducts) {
            return res.status(404).json({ error: 'Product not found' });
        }

        // Respond with a success message
        res.status(200).send({ id: productId, message: 'product deleted successfully' });
    } catch (error) {
        console.error('Error deleting product by ID:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
}

const fillterData = async (req, res) => {
    try {
        // Example query parameters: /api/products?product_categories=category&brand_name=brand1
        const queryParameters = req.query;

        // Build a filter object based on query parameters
        const filter = {
            [Op.or]: [],
        };

        // Check if product_categories is present and add it to the filter[Op.or] array
        if (queryParameters.product_categories) {
            filter[Op.or].push({ product_categories: queryParameters.product_categories });
        }

        // Check if brand_name is present and add it to the filter[Op.or] array
        if (queryParameters.brand_name) {
            filter[Op.or].push({ brand_name: queryParameters.brand_name });
        }

        if (queryParameters.discount_price) {
            filter[Op.or].push({ discount_price: queryParameters.discount_price });
        }

        // Fetch products based on the filter
        const data = await products.findAll({
            where: filter,
        });

        // Respond with the filtered products
        res.status(200).send(data);
    } catch (error) {
        console.error('Error fetching products:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
}

const fillterDataget = async (req, res) => {
    try {
        const { fillterData, applyType } = req.body;
        let modifiedProducts = [];
        console.log(fillterData);
        console.log(applyType);

        // console.log(req.user.mobile_num);

        if (applyType === "product_price") {
            for (const eachFilter of fillterData) {
                const minimum = eachFilter.split('-')[0].split('.')[1]
                const maximum = eachFilter.split('-')[1].split('.')[1]

                const filteredProducts = await products.findAll({
                    where: {
                        [applyType]: {
                            [Op.between]: [minimum, maximum], // Case-insensitive filter with wildcard
                        },
                    },
                });

                const newProducts = filteredProducts.filter(
                    (product) => !modifiedProducts.some((existingProduct) => existingProduct.product_id === product.product_id)
                );

                modifiedProducts = [...modifiedProducts, ...newProducts];
            }
            res.status(200).send(modifiedProducts);

        } else if (applyType === "High Price") {
            const filteredProducts = await products.findAll({
                order: [['product_price', 'DESC']],
            });

            const newProducts = filteredProducts.filter(
                (product) => !modifiedProducts.some((existingProduct) => existingProduct.product_id === product.product_id)
            );

            modifiedProducts = [...modifiedProducts, ...newProducts];
            res.status(200).send(modifiedProducts);

        } else if (applyType === "Low Price") {
            const filteredProducts = await products.findAll({
                order: [['product_price', 'ASC']],
            });

            const newProducts = filteredProducts.filter(
                (product) => !modifiedProducts.some((existingProduct) => existingProduct.product_id === product.product_id)
            );

            modifiedProducts = [...modifiedProducts, ...newProducts];
            res.status(200).send(modifiedProducts);

        } else if (applyType === "Discount") {
            const filteredProducts = await products.findAll({
                order: [['discount', 'DESC']],
            });

            const newProducts = filteredProducts.filter(
                (product) => !modifiedProducts.some((existingProduct) => existingProduct.product_id === product.product_id)
            );

            modifiedProducts = [...modifiedProducts, ...newProducts];
            res.status(200).send(modifiedProducts);

        } else if (applyType === "Rating") {
            const filteredProducts = await products.findAll({
                order: [['rating', 'DESC']],
            });

            const newProducts = filteredProducts.filter(
                (product) => !modifiedProducts.some((existingProduct) => existingProduct.product_id === product.product_id)
            );

            modifiedProducts = [...modifiedProducts, ...newProducts];
            res.status(200).send(modifiedProducts);

        } else {
            // let modifiedProducts = [];
            for (const eachFilter of fillterData) {
                const filteredProducts = await products.findAll({
                    where: {
                        [applyType]: {
                            [Op.like]: `%${eachFilter}%`, // Case-insensitive filter with wildcard
                        },
                        createdAt: {
                            [Op.lt]: new Date(),
                            [Op.gt]: new Date(new Date() - 70 * 24 * 60 * 60 * 1000)
                        }
                    },
                });


                const newProducts = filteredProducts.filter(
                    (product) => !modifiedProducts.some((existingProduct) => existingProduct.product_id === product.product_id)
                );

                modifiedProducts = [...modifiedProducts, ...newProducts];
            }

            res.status(200).send(modifiedProducts);
        }
    } catch (error) {
        console.error("Error in fillterDataget:", error);
        res.status(500).send("Internal Server Error");
    }
};

const fillterNewData = async (req, res) => {
    try {
        const limitedData = await products.findAll({
            where: {
                createdAt: {
                    [Op.lt]: new Date(),
                    [Op.gt]: new Date(new Date() - 180 * 24 * 60 * 60 * 1000)
                }
            },
        });
        const product = limitedData.slice(0, 100).map((item) => item);

        return res.status(200).send({
            success: 'success',
            result: product,
        });

    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}



module.exports = { Addproduct, getproduct, productdetail, fillterData, productDeleteById, fillterDataget, fillterNewData }

// module.exports = { productsData, getAllData, fillterData, getDataById, productDeleteById, editProductById }