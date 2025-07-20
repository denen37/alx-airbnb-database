- **Query**

```sql
SELECT b.*, u.*, p.*, py.* FROM booking b
LEFT JOIN user u
ON u.user_id = b.user_id
LEFT JOIN property p
ON p.property_id = b.property_id
LEFT JOIN payment py
ON py.booking_id = b.booking_id
ORDER BY b.created_at DESC
````

- **Performance Summary**:

| Operation                       | Rows | Time (ms)    | Notes                                           |
| ------------------------------- | ---- | ------------ | ----------------------------------------------- |
| Scan + sort `booking`           | 46   | \~1.21       | Minor cost, no index used for sort              |
| Lookup `user` (primary key)     | 46   | \~1.7        | Good index usage                                |
| Lookup `property` (primary key) | 46   | \~0.8        | Very fast                                       |
| Lookup `payment` (foreign key)  | 46   | \~0.6        | Sparse match, still fast                        |
| **Total time**                  | —    | **\~4.6 ms** | For a multi-table join with sorting — very good |


****Performance Breakdown**:

- **Scan + sort `booking`**: This operation scans the `booking` table and sorts the results by `created_at` in descending order. The cost is minor, and no index is used for sorting. This is expected for a small number of rows.

- **Lookup `user` (primary key)**: This operation performs a lookup in the `user` table using the primary key. The cost is good, indicating efficient index usage. This is expected for a large number of rows.

- **Lookup `property` (primary key)**: This operation performs a lookup in the `property` table using the primary key. The cost is very fast, indicating efficient index usage. This is expected for a large number of rows.

- **Lookup `payment` (foreign key)**: This operation performs a lookup in the `payment` table using the foreign key. The cost is sparse, indicating that the index is used effectively. This is expected for a large number of rows.

- **Total time**: The total time for the query is \~4.6 ms, which is very good for a multi-table join with sorting.

**Overall Evaluation**:
| Aspect               | Result                                                |
| -------------------- | ----------------------------------------------------- |
| 🔍 Join Strategy     | Efficient nested loops, suitable for small datasets   |
| 📊 Index Usage       | ✅ All joins use indexed lookups (PKs or FKs)          |
| ⚡ Performance        | ✅ Very fast (\~4.6 ms total execution time)           |
| 🔁 Optimization Need | ❌ Not necessary unless table size grows significantly |


- **Potential Improvements (if scaling up)**

    If booking grows large and this query is common create an index on `updated_at`

    ```sql
    CREATE INDEX idx_booking_created_at_desc ON booking(created_at DESC);
    ```

    That may eliminate the need for explicit sorting.