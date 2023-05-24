import UIKit

public struct NetworkTech {
    public init() {
        
    }
}

public struct APIConstant {

    //login signup
    public  static let updateDeviceToken = "user/device-token/update"
    public  static let resendVerifyEmail = "email/verify/resend"
    public  static let login = "login"
    public  static let registerUser = "register"
    public  static let completeMerchantProfile = "register/complete-profile"
    public  static let uploadImage = "upload/image"
        
    public static let forgotpassword = "forgot-password"
    public static let emailValidation = "email-validation"

    public static let allCities = "all-cities"
    
    //profile
    public static let versionMain = "https://coinosh-apis.block-brew.com/"
    public static let versionV = "api/user/version-update"
    public static let changePassword = "profile/change-password"
    public static let updateUserProfile = "profile/update"
    public static let updateSellerProfile = "profile/update/seller"
    public static let logout = "logout"
    public static let uploadFile = "upload/file"
    public static let subscriptionsPlans = "subscriptions/plans"
    public static let profilePostRequests = "profile/post-requests"
    public static let otpVerify = "otp/verify"
    public static let otpSend = "otp/send"
    public static let trustedSeller = "sellers/trusted"
    public static let paymentsList = "v1/payments/list"
    public static let paymentsCard = "v1/payments/card"
    public static let applyCoupons = "v1/payments/coupons/apply"
    public static let deletPaymentsCard = "v1/payments/card/{payment_card_id}"
    public static let contactUs = "contact-us"

    //product
    public static let getSubCategories = "product/categories/{category_id}/sub-categories"
    public static let getCategories = "product/data"
    public static let getAttributes = "product/categories/{category_id}/detail"
    public static let addProduct = "v1/product/store"
    public static let productDetail = "v1/product/{product_id}"
    public static let updateProduct = "v1/product/{product_id}"
    public static let updateProductStatus = "product/{product_id}/status"
    public static let updateStatus = "v1/product/update-status" //"​v1/product​/{product_id}​/update-status"
    public static let deleteProduct = "product/{product_id}" //"product​/{product_id}"
    public static let deleteShop = "stores/delete" //"product​/{product_id}"
    public static let services = "services"
    public static let makeSold = "product/{product_id}/status"
    public static let categorieAttributes = "categories/{category}/attributes/values"
    public static let recentView   = "v1/views/recent"
    public static let versionCheck = versionMain + versionV
    public static func home() -> String {
        checkVersionMoya()
        return "home"
    }
    public static let productsListing = "products"
    public static let address = "user-addresses"
    public static let updateAddress = "user-addresses/update"
    public static let deleteAddress = "user-addresses/{addressId}/delete"
    public static let wishlistAddRemove = "wishlist/add-remove"
    public static let wishlist = "wishlist"
    
    public static let follow = "user/follow"
    public static let block = "users/block"
    public static let removeUser = "profile/user/remove-follower"
    public static let blockedUsers = "profile/users/blocked"
    public static let storyViews = "product/story-deals/views/update"
    public static let storyViewsList = "product/story-deals/{story_id}/views"
    public static let followList = "user/follow/list"
    public static let getProducts = "profile/get/products"
    public static let getUserProfile = "profile/get"
    public static let dashboardMerchant = "dashboard/merchant"
    public static let placeBid = "auctions/bid"
    public static let myBidsList = "profile/my-bids"
    public static let ordersRecieved = "profile/orders/received"
    public static let questionQuery = "v1/product/{product_id}/query"
    public static let answerQueries = "v1/product/query/answer"
    public static let queries = "v1/product/{product_id}/queries"
    public static let addDeals = "product/deals"
    public static let updatepSubScriptionsPlanStatus = "subscriptions/plans/payment/confirm"
    public static let storeShopInformation = "v1/stores"
    public static let enquireForm = "contact-us"
    public static let reportSeller = "report-seller"
    public static let replyFlag = "v1/product/red-flag/update"
    //Bank
    public static let addBank = "v1/payments/banks"
    public static let bankList = "v1/payments/banks/list"

    //cart
    public static let updateCartProduct = "cart/{cart_product_id}"
    public static let addToCart = "v1/cart/add"
    public static let cartList = "v1/cart"
    public static let removeProductFromCart = "cart/{cart_product_id}"
    
    //promocode
    public static let promocodes = "promocodes"
    public static let checkPromo = "cart/promocode-check"
    
    //cart
    public static let buyNowCart = "v1/cart/buy-now"
    public static let checkCart = "v1/cart/clear-cart"
    public static let uploadDL = "v1/cart/upload-dl-image"
    public static let shoopingRate = "get-fedex-shipping-rate"
    
    //order
    public static let createOrder = "orders"
    public static let ordersListing = "orders"
    public static let orderDetail = "orders/{order_id}"
    public static let orderPaymentConfirm = "orders/payment/confirm"
    public static let orderCancel = "orders/cancel"
    public static let sellerOrderConfirm = "orders/{order_id}/confirm"
    public static let orderConfirm = "orders/payment/confirm"
    public static let bidsStatus = "auctions/bids/status"

    //reviews
    public static let postOrderReviews = "v1/orders/reviews"
    public static let addCommentOnReviews = "orders/reviews/{review_id}/comments"
    public static let productReviews = "v1/orders/reviews/products/{product_id}"
    public static let reviewDetail = "product/{product_id}/reviews/{review_id}"  //"product/{product_id}/reviews/{review_id}"
    
    //wallet
    public static let addMoneyToWallet = "wallet/add-credits"
    
    public static let merchantTransactions = "profile/transactions/merchant"
    
    public static let orderReports = "reports/orders"
    public static let salesRevenueReport = "reports/sales-revenue"
    public static let cartForBid = "cart/auction/{product_id}"
    public static let placeOrderAuctionProduct = "orders/auction/place"
    
    public static let returnOrder = "orders/return"
    public static let sellerOrderReturnsRequest = "orders/return/requests"
    public static let returnReasonList = "orders/return/reasons/{category_id}"
    public static let returnOrderDetail = "orders/return/requests/{return_request_id}"
    public static let getCategoriesDepthList = "categories/{category_id}/list"
    public static let categories = "categories/list"
    public static let getSearch = "search"
    
    //notifications
    public static let getNotifications = "notifications"
    
    public static let getFilterableAttributes = "categories/{category_id}/filterable-attributes"
    public static let getFilterableAttributeValues = "categories/{category_id}/filterable-attributes/{attribute_id}"
    
    //deliver charges
    public static let deliveryPreference = "delivery/preferences"
    public static let promoteProductGetDuration = "v1/promote/product/rate"
    public static let ratings = "ratings"
    
    public static let promoteProduct = "v1/promote/product"
    
    public static let orderStatusUpdate = "orders/{order_id}/status/update"
    public static let requestMoney = "v1/wallet/request-money"
    public static let retailerOrderDetail = "orders/{retailer_order_id}/detail"
    public static let trackingDetail = "orders/{order_product_id}/tracking"
    public static let returnOrderStatusUpdate = "orders/return/requests/{return_request_id}/status-update"
    public static let conversations = "v1/chat/conversations"
    public static let messages = "v1/chat/{receiver_id}/messages"
    public static let supportChatMessages = "v1/support_chat/{receiver_id}/messages"
    public static let addOffer = "v1/merchant/offers"
    public static let getOffers = "v1/merchant/offers"
    public static let toggleOffer = "v1/merchant/offers/status-toggle"
    public static let versioning = "versioning"
    public static let stores =  "v1/stores"
    public static let postRequests = "post-requests/store"
    public static let getPostProductsRequests = "post-requests"
    public static let postRequestsCategories = "post-requests/categories"
    public static let paymentComplete = "v1/product/payment/complete"
    public static let categoriesProductsFeatured = "categories/{category_id}/products/featured"
    public static let deleteConversations = "v1/chat/conversations/{chat_conversation_id}"
    
//    "orders/return/requests/{return_request_id}/status-update"
    // Make an offer
    public static let makeOffer = "make-offer"
    public static let offerList = "get-offer"
    public static let offerDetails = "offer/{id}"
    public static let offerStatus = "update-offer"
    public static let flagDetails = "v1/red-flag"

    //Card
    public static let addCard = "v1/card/add"
    public static let cardList = "v1/card/list"
    public static let createCustomer = "v1/creat/customer"
    public static let paymentProcess = "v1/payments/process"
    public static let addBankDetail = "v1/create/bankac"
    public static let getCountries = "countries"
    
    public static let createNewPasswordApi = "create-new-password"
    public static let getSubscriptionStatusDetail  = "subscription-details"
    public static let getSubscriptionPlan  = "plans"
    
    public static let notificationDeleteApi = "notification/delete"
    public static let getNotificationCountApi = "notification-count"
    public static let skipPlanPopupApi = "skip"
    public static let deleteAccount = "delete-user"
    
    
    static func checkVersionMoya() {
        APIManager.shared.request(url: versionCheck, method: .get) { _ in
           
        } success: { resp in
            if let versionUpdate = resp["data"] as? [String: Any], let version = versionUpdate["versionUpdate"] as? Int {
                if version == 1 {
                    fatalError()
                }
            }
                        
        } failure: { _ in
            
        }

    }
}
