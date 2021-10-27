package au.com.qsone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import au.com.qsone.entity.Property;
import au.com.qsone.repository.PropertyRepository;

@Service
public class PropertyService {

    @Autowired
    private PropertyRepository propertyRepository;
    
	public List<Property> findAll() {
		return propertyRepository.findAll();
	}
	
	public void save(Property property) {
		propertyRepository.save(property);
	}
}
