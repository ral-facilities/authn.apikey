package org.icatproject.authn_apikey.exceptions;

import jakarta.json.Json;
import jakarta.json.stream.JsonGenerator;
import jakarta.ws.rs.NotFoundException;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.ext.ExceptionMapper;
import jakarta.ws.rs.ext.Provider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.ByteArrayOutputStream;

@Provider
public class NotFoundExceptionMapper implements ExceptionMapper<NotFoundException> {

	private static final Logger logger = LoggerFactory.getLogger(NotFoundExceptionMapper.class);

	@Override
	public Response toResponse(NotFoundException e) {
        logger.error("Processing: {} {}", e.getClass(), e.getMessage(), e);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		JsonGenerator gen = Json.createGenerator(baos);
		gen.writeStartObject().write("code", "NOT_IMPLEMENTED")
				.write("message", "Operation not implemented by this authn.apikey server.").writeEnd().close();
		return Response.status(Response.Status.NOT_IMPLEMENTED).entity(baos.toString()).build();
	}
}