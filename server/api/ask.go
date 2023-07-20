package api

import (
	"errors"
	"net/http"
)

func (api *API) ask(w http.ResponseWriter, r *http.Request) {
	query := r.URL.Query().Get("query")

	if query == "" {
		errorResponse(w, http.StatusBadRequest, errors.New("provide a query parameter"))
		return
	}

	resp, err := api.Funcs.Ask(r.Context(), query)
	if query == "" {
		errorResponse(w, http.StatusInternalServerError, err)
		return
	}

	jsonResponse(w, http.StatusOK, resp)
}
