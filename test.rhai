fn supergraph_service(service) {
    service.map_response(|response| {
        log_warn(`Supergraph response: ${response.body}`);
    });
}

// At the execution_service stage, register callbacks for processing requests and
// responses.
fn execution_service(service) {
    service.map_response(|response| {
        log_warn(`Execution response: ${response.body}`);
    });
}

// At the subgraph_service stage, register callbacks for processing requests and
// responses.
fn subgraph_service(service, subgraph) {
    service.map_response(|response| {
        log_warn(`Subgraph response: ${response.body}`);
    });
}
