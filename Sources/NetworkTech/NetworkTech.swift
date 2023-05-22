import UIKit

public struct NetworkTech {
    public init() {
        
    }
}

struct APIConstant {

    //login signup
    static let updateDeviceToken = "user/device-token/update"
    static let resendVerifyEmail = "email/verify/resend"
    static let login = "login"
    static let registerUser = "register"
    static let completeMerchantProfile = "register/complete-profile"
    static let uploadImage = "upload/image"
        
    static let forgotpassword = "forgot-password"
    static let emailValidation = "email-validation"

    static let allCities = "all-cities"
    
    //profile
    static let changePassword = "profile/change-password"
    static let updateUserProfile = "profile/update"
    static let updateSellerProfile = "profile/update/seller"
    static let logout = "logout"
    static let uploadFile = "upload/file"
    static let subscriptionsPlans = "subscriptions/plans"
    static let profilePostRequests = "profile/post-requests"
    static let otpVerify = "otp/verify"
    static let otpSend = "otp/send"
    static let trustedSeller = "sellers/trusted"
    static let paymentsList = "v1/payments/list"
    static let paymentsCard = "v1/payments/card"
    static let applyCoupons = "v1/payments/coupons/apply"
    static let deletPaymentsCard = "v1/payments/card/{payment_card_id}"
    static let contactUs = "contact-us"

    //product
    static let getSubCategories = "product/categories/{category_id}/sub-categories"
    static let getCategories = "product/data"
    static let getAttributes = "product/categories/{category_id}/detail"
    static let addProduct = "v1/product/store"
    static let productDetail = "v1/product/{product_id}"
    static let updateProduct = "v1/product/{product_id}"
    static let updateProductStatus = "product/{product_id}/status"
    static let updateStatus = "v1/product/update-status" //"​v1/product​/{product_id}​/update-status"
    static let deleteProduct = "product/{product_id}" //"product​/{product_id}"
    static let deleteShop = "stores/delete" //"product​/{product_id}"
    static let services = "services"
    static let makeSold = "product/{product_id}/status"
    static let categorieAttributes = "categories/{category}/attributes/values"
    static let recentView   = "v1/views/recent"
    static let home = "home"
    static let productsListing = "products"
    static let address = "user-addresses"
    static let updateAddress = "user-addresses/update"
    static let deleteAddress = "user-addresses/{addressId}/delete"
    static let wishlistAddRemove = "wishlist/add-remove"
    static let wishlist = "wishlist"
    
    static let follow = "user/follow"
    static let block = "users/block"
    static let removeUser = "profile/user/remove-follower"
    static let blockedUsers = "profile/users/blocked"
    static let storyViews = "product/story-deals/views/update"
    static let storyViewsList = "product/story-deals/{story_id}/views"
    static let followList = "user/follow/list"
    static let getProducts = "profile/get/products"
    static let getUserProfile = "profile/get"
    static let dashboardMerchant = "dashboard/merchant"
    static let placeBid = "auctions/bid"
    static let myBidsList = "profile/my-bids"
    static let ordersRecieved = "profile/orders/received"
    static let questionQuery = "v1/product/{product_id}/query"
    static let answerQueries = "v1/product/query/answer"
    static let queries = "v1/product/{product_id}/queries"
    static let addDeals = "product/deals"
    static let updatepSubScriptionsPlanStatus = "subscriptions/plans/payment/confirm"
    static let storeShopInformation = "v1/stores"
    static let enquireForm = "contact-us"
    static let reportSeller = "report-seller"
    static let replyFlag = "v1/product/red-flag/update"
    //Bank
    static let addBank = "v1/payments/banks"
    static let bankList = "v1/payments/banks/list"

    //cart
    static let updateCartProduct = "cart/{cart_product_id}"
    static let addToCart = "v1/cart/add"
    static let cartList = "v1/cart"
    static let removeProductFromCart = "cart/{cart_product_id}"
    
    //promocode
    static let promocodes = "promocodes"
    static let checkPromo = "cart/promocode-check"
    
    //cart
    static let buyNowCart = "v1/cart/buy-now"
    static let checkCart = "v1/cart/clear-cart"
    static let uploadDL = "v1/cart/upload-dl-image"
    static let shoopingRate = "get-fedex-shipping-rate"
    
    //order
    static let createOrder = "orders"
    static let ordersListing = "orders"
    static let orderDetail = "orders/{order_id}"
    static let orderPaymentConfirm = "orders/payment/confirm"
    static let orderCancel = "orders/cancel"
    static let sellerOrderConfirm = "orders/{order_id}/confirm"
    static let orderConfirm = "orders/payment/confirm"
    static let bidsStatus = "auctions/bids/status"

    //reviews
    static let postOrderReviews = "v1/orders/reviews"
    static let addCommentOnReviews = "orders/reviews/{review_id}/comments"
    static let productReviews = "v1/orders/reviews/products/{product_id}"
    static let reviewDetail = "product/{product_id}/reviews/{review_id}"  //"product/{product_id}/reviews/{review_id}"
    
    //wallet
    static let addMoneyToWallet = "wallet/add-credits"
    
    static let merchantTransactions = "profile/transactions/merchant"
    
    static let orderReports = "reports/orders"
    static let salesRevenueReport = "reports/sales-revenue"
    static let cartForBid = "cart/auction/{product_id}"
    static let placeOrderAuctionProduct = "orders/auction/place"
    
    static let returnOrder = "orders/return"
    static let sellerOrderReturnsRequest = "orders/return/requests"
    static let returnReasonList = "orders/return/reasons/{category_id}"
    static let returnOrderDetail = "orders/return/requests/{return_request_id}"
    static let getCategoriesDepthList = "categories/{category_id}/list"
    static let categories = "categories/list"
    static let getSearch = "search"
    
    //notifications
    static let getNotifications = "notifications"
    
    static let getFilterableAttributes = "categories/{category_id}/filterable-attributes"
    static let getFilterableAttributeValues = "categories/{category_id}/filterable-attributes/{attribute_id}"
    
    //deliver charges
    static let deliveryPreference = "delivery/preferences"
    static let promoteProductGetDuration = "v1/promote/product/rate"
    static let ratings = "ratings"
    
    static let promoteProduct = "v1/promote/product"
    
    static let orderStatusUpdate = "orders/{order_id}/status/update"
    static let requestMoney = "v1/wallet/request-money"
    static let retailerOrderDetail = "orders/{retailer_order_id}/detail"
    static let trackingDetail = "orders/{order_product_id}/tracking"
    static let returnOrderStatusUpdate = "orders/return/requests/{return_request_id}/status-update"
    static let conversations = "v1/chat/conversations"
    static let messages = "v1/chat/{receiver_id}/messages"
    static let supportChatMessages = "v1/support_chat/{receiver_id}/messages"
    static let addOffer = "v1/merchant/offers"
    static let getOffers = "v1/merchant/offers"
    static let toggleOffer = "v1/merchant/offers/status-toggle"
    static let versioning = "versioning"
    static let stores =  "v1/stores"
    static let postRequests = "post-requests/store"
    static let getPostProductsRequests = "post-requests"
    static let postRequestsCategories = "post-requests/categories"
    static let paymentComplete = "v1/product/payment/complete"
    static let categoriesProductsFeatured = "categories/{category_id}/products/featured"
    static let deleteConversations = "v1/chat/conversations/{chat_conversation_id}"
    
//    "orders/return/requests/{return_request_id}/status-update"
    // Make an offer
    static let makeOffer = "make-offer"
    static let offerList = "get-offer"
    static let offerDetails = "offer/{id}"
    static let offerStatus = "update-offer"
    static let flagDetails = "v1/red-flag"

    //Card
    static let addCard = "v1/card/add"
    static let cardList = "v1/card/list"
    static let createCustomer = "v1/creat/customer"
    static let paymentProcess = "v1/payments/process"
    static let addBankDetail = "v1/create/bankac"
    static let getCountries = "countries"
    
    static let createNewPasswordApi = "create-new-password"
    static let getSubscriptionStatusDetail  = "subscription-details"
    static let getSubscriptionPlan  = "plans"
    
    static let notificationDeleteApi = "notification/delete"
    static let getNotificationCountApi = "notification-count"
    static let skipPlanPopupApi = "skip"
}
