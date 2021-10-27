package au.com.qsone.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import au.com.qsone.entity.Property;

/**
 * 
 * 
 * 
 */
@Repository("propertyRepository")
public interface PropertyRepository extends JpaRepository<Property, Integer> {
    
}



