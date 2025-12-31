const express = require('express');
const app = express();
app.use(express.json());

const packages = {
    gold: { price: 19.99, coins: 500, vipDays: 30 },
    platinum: { price: 39.99, coins: 1000, vipDays: 60 },
    diamond: { price: 99.99, coins: 5000, vipDays: 365 }
};

app.post('/api/payment/webhook', (req, res) => {
    const { userId, packageType, paymentId, amount } = req.body;
    
    if (!userId || !packageType || !paymentId) {
        return res.status(400).json({ error: 'Missing required fields' });
    }
    
    const package = packages[packageType];
    if (!package) {
        return res.status(400).json({ error: 'Invalid package type' });
    }
    
    console.log(`Payment processed for user ${userId}:`);
    console.log(`- Package: ${packageType}`);
    console.log(`- Amount: $${amount}`);
    console.log(`- Payment ID: ${paymentId}`);
    
    res.json({
        success: true,
        message: 'Payment processed successfully',
        data: {
            userId,
            package: packageType,
            coinsAdded: package.coins,
            vipDays: package.vipDays,
            transactionId: `TXN${Date.now()}`
        }
    });
});

app.post('/api/payment/process', (req, res) => {
    const { cardNumber, expiry, cvv, packageType } = req.body;
    
    if (!cardNumber || !expiry || !cvv || !packageType) {
        return res.status(400).json({ error: 'Missing payment details' });
    }
    
    setTimeout(() => {
        const success = Math.random() < 0.8;
        
        if (success) {
            const package = packages[packageType];
            res.json({
                success: true,
                message: 'Payment successful',
                transactionId: `TXN${Date.now()}`,
                package: {
                    type: packageType,
                    price: package.price,
                    coins: package.coins,
                    vipDays: package.vipDays
                }
            });
        } else {
            res.status(402).json({
                success: false,
                error: 'Payment declined'
            });
        }
    }, 2000);
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Payment server running on port ${PORT}`);
});
