PROCEDURE CheckForSequence(iQty IN NUMBER) AS
      TYPE purgeArray IS TABLE OF VARCHAR2(15) NOT NULL INDEX BY VARCHAR2(15);
      
      idx NUMBER;             -- indexing var
      currentItem NUMBER;   -- stores current item
      purgeList purgeArray;   -- used to store item_ids that need to be purged
	  
  BEGIN
    IF iQty > 0 THEN
	
      FOR item IN (SELECT item_id, rownum FROM test_table) LOOP
	  
        -- make sure we have enough items to give out
        IF (item.rownum + iQty) <= 100 THEN
		
          -- convert this item id to an integer and set lookup index (idx)
          currentItem := CAST(item.item_id AS NUMBER);
          idx := currentItem;
          
          -- get range of n items (iQty = n) and test for sequence
          FOR sequenceTest IN (SELECT item_id, rownum FROM test_table OFFSET item.rownum ROWS FETCH NEXT iQty ROWS ONLY) LOOP
            idx := idx + 1;
            
            IF idx <> CAST(sequenceTest.item_id AS NUMBER) THEN
              -- this number is not in sequence ( > +1), break out of loop after storing in purge list
              purgeList(item.rownum) := item.item_id;
              EXIT;
            END IF;
          END LOOP;
        END IF;
      END LOOP;
      
      -- purge items that need deletion, re-using idx to not create more vars
      idx := purgeList.FIRST;
	  
      WHILE idx IS NOT NULL LOOP
        DELETE FROM test_table WHERE item_id=purgeList(idx);
		
        idx := purgeList.NEXT(idx);
      END LOOP;
    END IF;
  END CheckForSequence;