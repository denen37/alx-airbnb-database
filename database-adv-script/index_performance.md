1. ### Booking
    - **Query**: SELECT * FROM booking where created_at = '2025-07-06 03:27:37';

    - **Indexing Query**: CREATE INDEX idx_created_at ON booking(created_at);

    - **Analysis after indexing**: 
        The index on created_at clearly improved performance:
        - Approx. 78% faster (0.152 ms → 0.034 ms)
        - Avoided scanning 46 rows unnecessarily
    - Even though no rows matched, the cost and execution time are much lower — a big win, especially as the table grows.

    - **Comparison summary**:

| Metric             | Before Index (Full Scan) | After Index (Index Lookup) | Better  |
| ------------------ | ------------------------ | -------------------------- | ------- |
| **Execution time** | 0.152 ms                 | 0.0338 ms                  | ✅ After |
| **Plan**           | Table scan + filter      | Index scan                 | ✅ After |
| **Estimated cost** | 4.85                     | 0.35                       | ✅ After |
| **Rows scanned**   | 46                       | 0                          | ✅ After |
| **Rows returned**  | 0                        | 0                          | Same    |


2. ### Property

    - - **Query**: SELECT * FROM property WHERE price_per_night = 120;

    - **Indexing Query**: CREATE INDEX idx_price_per_night ON property(price_per_night);

    - **Analysis after indexing**: 
        - The index reduced execution time by over 50%.
        - It also avoided scanning all 15 rows — this effect grows more significant as the table grows.
        - The index is clearly beneficial, especially for queries that filter by `price_per_night`

    - **Comparison Summary**

| Metric                  | Before Index (Table Scan) | After Index (Index Lookup) | Better |
| ----------------------- | ------------------------- | -------------------------- | --------- |
| **Execution time (ms)** | 0.0579 – 0.086            | 0.0294 – 0.034             | ✅ After   |
| **Rows scanned**        | 15                        | 1 (index hit)              | ✅ After   |
| **Rows returned**       | 1                         | 1                          | Equal     |
| **Query plan**          | Filter after full scan    | Direct lookup via index    | ✅ After   |
| **Estimated cost**      | 1.75                      | 0.35                       | ✅ After   |


3. ### User
    - **Query**: SELECT * FROM user WHERE phone_number = '123-456-7890';
    - **Indexing Query**: CREATE INDEX idx_phone_number ON user(phone_number);
     - **Analysis after indexing**: 
        The index significantly improved performance:
        - Approx. 60–80% faster
        - Scanned only 1 row vs. 25
        - This improvement will scale better as the table grows.
        -  Excellent use case for a single-column index on phone number.

     - **Comparison Summary**

| Metric                  | Before Index (Table Scan) | After Index (Index Lookup) | ✅ Better |
| ----------------------- | ------------------------- | -------------------------- | -------- |
| **Execution time (ms)** | 0.0986 – 0.225            | 0.0463 – 0.0506            | ✅ After  |
| **Rows scanned**        | 25                        | 1                          | ✅ After  |
| **Query plan**          | Table scan + filter       | Index lookup               | ✅ After  |
| **Estimated cost**      | 2.75                      | 0.35                       | ✅ After  |
| **Rows returned**       | 1                         | 1                          | Equal    |

4. User

