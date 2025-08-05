# 온라인 쇼핑몰 시스템 구현 문제 (완전판)

## 📋 문제 개요
**Java를 이용하여 기본적인 온라인 쇼핑몰 관리 시스템을 구현하시오.**

**제한시간: 2-3시간**  
**난이도: 중급 (컬렉션, 예외처리, 상속 활용)**  
**대상: Java 기초 ~ 컬렉션 프레임워크까지 학습한 취준생**

---

## 🎯 요구사항 개요

### 핵심 기능
- ✅ **상품 관리**: 등록, 조회, 검색, 재고 관리
- ✅ **고객 관리**: 고객/관리자 등록, 정보 조회
- ✅ **장바구니**: 상품 추가, 수량 관리, 조회
- ✅ **주문 처리**: 장바구니 → 주문 → 재고 차감
- ✅ **통계 정보**: 매출, 상품 현황, 카테고리별 분석
- ✅ **예외 처리**: 계층적 예외 구조로 안정적인 시스템

### 제외된 복잡한 기능
- ❌ 적립금/포인트 시스템
- ❌ 회원 등급/할인 시스템  
- ❌ 결제 시스템
- ❌ 배송 관리

---

## 🏗️ 구현해야 할 클래스 구조

### 📦 패키지 구조
```
totallab/
├── model/          # 도메인 모델 클래스들
├── service/        # 비즈니스 로직 클래스
├── exception/      # 예외 처리 클래스들
└── main/           # 메인 실행 클래스
```

---

## 📋 상세 구현 요구사항

### A. 예외 처리 클래스 (totallab.exception 패키지) ⭐⭐⭐

#### 계층적 예외 구조 (필수 구현)
```java
ShopException (기본 예외 - 모든 쇼핑몰 예외의 부모)
├── CustomerNotFoundException (고객을 찾을 수 없는 경우)
├── ProductNotFoundException (상품을 찾을 수 없는 경우)
└── InsufficientStockException (재고 부족인 경우)
```

#### 1. ShopException 클래스 (기본 예외)
```java
/**
 * 쇼핑몰 시스템의 기본 예외 클래스
 * 다른 모든 쇼핑몰 관련 예외의 부모 클래스
 */
public class ShopException extends Exception {
    /**
     * 메시지를 포함한 예외 생성자
     * @param message 예외 메시지
     */
    public ShopException(String message) {
        super(message);
    }
}
```

#### 2. CustomerNotFoundException 클래스
```java
/**
 * 고객을 찾을 수 없을 때 발생하는 예외
 */
public class CustomerNotFoundException extends ShopException {
    /**
     * 고객을 찾을 수 없을 때의 예외 생성자
     * @param message 예외 메시지
     */
    public CustomerNotFoundException(String message) {
        super(message);
    }
}
```

#### 3. ProductNotFoundException 클래스
```java
/**
 * 상품을 찾을 수 없을 때 발생하는 예외
 */
public class ProductNotFoundException extends ShopException {
    /**
     * 상품을 찾을 수 없을 때의 예외 생성자
     * @param message 예외 메시지
     */
    public ProductNotFoundException(String message) {
        super(message);
    }
}
```

#### 4. InsufficientStockException 클래스
```java
/**
 * 재고 부족 시 발생하는 예외
 */
public class InsufficientStockException extends ShopException {
    /**
     * 재고 부족 예외 생성자
     * @param message 예외 메시지
     */
    public InsufficientStockException(String message) {
        super(message);
    }
}
```

---

### B. 모델 클래스 (totallab.model 패키지)

#### 1. Person 추상 클래스 ⭐⭐⭐
```java
/**
 * 사람을 나타내는 추상 클래스
 * Customer와 Manager의 공통 부모 클래스
 */
public abstract class Person {
    protected String id;     // 고유 ID
    protected String name;   // 이름
    protected String email;  // 이메일
    
    /**
     * Person 생성자
     * @param id 고유 ID
     * @param name 이름
     * @param email 이메일
     */
    public Person(String id, String name, String email) {
        this.id = id;
        this.name = name;
        this.email = email;
    }
    
    // Getter 메서드들
    public String getId() { return id; }
    public String getName() { return name; }
    public String getEmail() { return email; }
    
    /**
     * 사용자 유형을 반환하는 추상 메서드
     * 하위 클래스에서 반드시 구현해야 함
     * @return 사용자 유형 (예: "고객", "관리자")
     */
    public abstract String getUserType();
    
    @Override
    public String toString() {
        return String.format("ID: %s, 이름: %s, 이메일: %s, 유형: %s", 
                           id, name, email, getUserType());
    }
}
```

**구현 포인트:**
- Customer와 Manager의 공통 부모 클래스
- 추상 메서드로 다형성 구현
- 캡슐화를 위한 protected 필드 사용

#### 2. Customer 클래스 (Person 상속) ⭐⭐
```java
/**
 * 쇼핑몰 고객을 나타내는 클래스
 * Person 클래스를 상속받음
 */
public class Customer extends Person {
    private LocalDateTime joinDate; // 가입일
    
    /**
     * Customer 생성자
     * @param id 고객 ID
     * @param name 고객 이름
     * @param email 이메일
     */
    public Customer(String id, String name, String email) {
        super(id, name, email);
        this.joinDate = LocalDateTime.now(); // 생성자에서 가입일 자동 설정
    }
    
    /**
     * Person의 추상 메서드 구현
     * @return "고객"
     */
    @Override
    public String getUserType() {
        return "고객";
    }
    
    public LocalDateTime getJoinDate() { return joinDate; }
    
    @Override
    public String toString() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        return super.toString() + 
               String.format(", 가입일: %s", joinDate.format(formatter));
    }
}
```

#### 3. Manager 클래스 (Person 상속) ⭐⭐
```java
/**
 * 쇼핑몰 관리자를 나타내는 클래스
 * Person 클래스를 상속받음
 */
public class Manager extends Person {
    private String department; // 부서
    private int employeeId;   // 사번
    
    /**
     * Manager 생성자
     * @param id 관리자 ID
     * @param name 관리자 이름
     * @param email 이메일
     * @param department 부서
     * @param employeeId 사번
     */
    public Manager(String id, String name, String email, String department, int employeeId) {
        super(id, name, email);
        this.department = department;
        this.employeeId = employeeId;
    }
    
    /**
     * Person의 추상 메서드 구현
     * @return "관리자"
     */
    @Override
    public String getUserType() {
        return "관리자";
    }
    
    public String getDepartment() { return department; }
    public int getEmployeeId() { return employeeId; }
    
    @Override
    public String toString() {
        return super.toString() + 
               String.format(", 부서: %s, 사번: %d", department, employeeId);
    }
}
```

#### 4. Product 클래스 ⭐⭐⭐
```java
public class Product {
    private String productId;       // 상품 ID
    private String name;           // 상품명
    private int price;            // 가격
    private int stock;            // 재고
    private String category;      // 카테고리
    private double rating;        // 평점 (0.0 ~ 5.0)
    private int reviewCount;      // 리뷰 개수
    
    // 생성자, getter 메서드들
    public void reduceStock(int quantity) throws InsufficientStockException
    public void addStock(int quantity)
    public boolean isInStock()
    public boolean isLowStock() // 재고 5개 이하 체크 (요구사항)
    public void addReview(double newRating)
}
```

**중요한 비즈니스 로직:**
- `reduceStock()`: 재고 부족 시 예외 발생
- `isLowStock()`: **재고 5개 이하면 true (요구사항 명시)**
- `addReview()`: 평점 평균 자동 계산

**재고 관리 요구사항:**
- **재고 부족 기준**: 5개 이하
- **품절 상태**: 0개
- **재고 충분**: 6개 이상

#### 5. CartItem 클래스 ⭐⭐
```java
public class CartItem {
    private Product product;  // 상품
    private int quantity;    // 수량
    
    public void addQuantity(int amount)    // 수량 증가
    public int getTotalPrice()             // 총 가격 계산
    // toString()으로 상품정보와 총액 표시
}
```

#### 6. Order 클래스 ⭐⭐
```java
public class Order {
    private String orderId;              // 주문 ID
    private Customer customer;           // 주문 고객
    private ArrayList<CartItem> items;   // 주문 상품들
    private LocalDateTime orderDate;     // 주문일시
    private int totalAmount;            // 총 주문금액
    private String status;              // 주문 상태
    
    // 생성자에서 총 금액 자동 계산
    public void updateStatus(String newStatus)
}
```

---

### C. 서비스 클래스 (totallab.service 패키지) ⭐⭐⭐⭐

#### ShoppingMall 클래스 (핵심 비즈니스 로직)
```java
public class ShoppingMall {
    private HashMap<String, Product> products;      // 상품 관리
    private HashMap<String, Customer> customers;    // 고객 관리  
    private HashMap<String, Manager> managers;      // 관리자 관리
    private ArrayList<Order> orders;               // 주문 내역
    private HashMap<String, ArrayList<CartItem>> carts; // 고객별 장바구니
    private String mallName;
    private int orderCounter; // 주문 번호 생성용
}
```

**필수 구현 메서드들:**

#### 🛍️ 상품 관리 메서드 (예외 처리 포함)
```java
// 기본 CRUD
void addProduct(String productId, String name, int price, int stock, String category) throws ShopException
void displayAllProducts()
void displayAvailableProducts() // 재고 있는 상품만

// 검색 기능  
ArrayList<Product> searchProductsByName(String name)
ArrayList<Product> getProductsByCategory(String category)
ArrayList<Product> getLowStockProducts() // 재고 부족 상품 (5개 이하)
```

**예외 발생 시나리오:**
- 중복 상품 ID 등록 시 → `ShopException: "이미 존재하는 상품 ID입니다: P001"`

#### 👥 고객 관리 메서드 (예외 처리 포함)
```java
void addCustomer(String id, String name, String email) throws ShopException
void addManager(String id, String name, String email, String department, int employeeId) throws ShopException
void displayCustomerOrders(String customerId) throws CustomerNotFoundException
```

**예외 발생 시나리오:**
- 중복 고객 ID 등록 시 → `ShopException: "이미 존재하는 고객 ID입니다: C001"`
- 존재하지 않는 고객 조회 시 → `CustomerNotFoundException: "존재하지 않는 고객입니다: C999"`

#### 🛒 장바구니 관리 메서드 (예외 처리 포함)
```java
void addToCart(String customerId, String productId, int quantity) 
    throws CustomerNotFoundException, ProductNotFoundException
void displayCart(String customerId) throws CustomerNotFoundException
```

**예외 발생 시나리오:**
- 존재하지 않는 고객 → `CustomerNotFoundException: "존재하지 않는 고객입니다: C999"`
- 존재하지 않는 상품 → `ProductNotFoundException: "존재하지 않는 상품입니다: P999"`

#### 📦 주문 처리 메서드 (핵심 예외 처리)
```java
void placeOrder(String customerId) throws ShopException
// 핵심 처리 로직:
// 1. 고객 존재 확인 → CustomerNotFoundException
// 2. 장바구니 비어있는지 확인 → ShopException  
// 3. 재고 확인 및 차감 → InsufficientStockException
// 4. 주문 생성 및 저장
// 5. 장바구니 비우기
```

**예외 발생 시나리오:**
- 빈 장바구니 주문 시 → `ShopException: "장바구니가 비어있습니다."`
- 재고 부족 시 → `ShopException: "주문 실패: 재고 부족: 갤럭시 스마트폰 (요청: 10, 현재: 3)"`

#### 📊 통계 정보 메서드
```java
void displayMallStatistics()
// 출력 내용:
// - 총 상품 수, 구매 가능한 상품 수, 재고 부족 상품 수 (5개 이하)
// - 등록 고객 수, 총 주문 수, 총 매출
// - 카테고리별 상품 수
```

---

### D. UI 클래스 (totallab.main 패키지) ⭐⭐⭐

#### ShoppingMallSystem 클래스 (예외 처리 포함)
**메뉴 구조:**
```
=== 메인 메뉴 ===
1. 상품 관리
2. 고객 관리  
3. 장바구니 관리
4. 주문 관리
5. 통계 정보
0. 종료
```

**서브메뉴 구조:**

##### 1. 상품 관리 서브메뉴
```
1. 상품 추가
2. 전체 상품 보기
3. 구매 가능한 상품 보기  
4. 상품 검색 (이름)
5. 카테고리별 상품 보기
6. 재고 부족 상품 보기 (5개 이하)
0. 메인 메뉴로 돌아가기
```

##### 2. 고객 관리 서브메뉴
```
1. 고객 등록
2. 관리자 등록
3. 고객 주문 내역 조회
0. 메인 메뉴로 돌아가기
```

##### 3. 장바구니 관리 서브메뉴
```
1. 장바구니에 상품 추가
2. 장바구니 보기
0. 메인 메뉴로 돌아가기
```

##### 4. 주문 관리 서브메뉴
```
1. 주문하기
2. 고객 주문 내역 보기
0. 메인 메뉴로 돌아가기
```

**초기 데이터 설정:**
```java
private void initializeData() {
    // 기본 상품 8개 이상 (다양한 카테고리)
    // 기본 고객 3명 이상
    // 기본 관리자 1명 이상
}
```

**UI 예외 처리 예시:**
```java
try {
    // 사용자 입력 처리
    mall.addToCart(customerId, productId, quantity);
} catch (NumberFormatException e) {
    System.out.println("수량은 숫자로 입력해주세요.");
} catch (CustomerNotFoundException e) {
    System.out.println("오류: " + e.getMessage());
} catch (ProductNotFoundException e) {
    System.out.println("오류: " + e.getMessage());
} catch (Exception e) {
    System.out.println("예상치 못한 오류가 발생했습니다: " + e.getMessage());
}
```