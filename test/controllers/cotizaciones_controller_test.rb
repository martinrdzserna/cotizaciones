require 'test_helper'

class CotizacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotizacione = cotizaciones(:one)
  end

  test "should get index" do
    get cotizaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_cotizacione_url
    assert_response :success
  end

  test "should create cotizacione" do
    assert_difference('Cotizacione.count') do
      post cotizaciones_url, params: { cotizacione: { paqueteria: @cotizacione.paqueteria, precio: @cotizacione.precio, producto: @cotizacione.producto, token: @cotizacione.token } }
    end

    assert_redirected_to cotizacione_url(Cotizacione.last)
  end

  test "should show cotizacione" do
    get cotizacione_url(@cotizacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotizacione_url(@cotizacione)
    assert_response :success
  end

  test "should update cotizacione" do
    patch cotizacione_url(@cotizacione), params: { cotizacione: { paqueteria: @cotizacione.paqueteria, precio: @cotizacione.precio, producto: @cotizacione.producto, token: @cotizacione.token } }
    assert_redirected_to cotizacione_url(@cotizacione)
  end

  test "should destroy cotizacione" do
    assert_difference('Cotizacione.count', -1) do
      delete cotizacione_url(@cotizacione)
    end

    assert_redirected_to cotizaciones_url
  end
end
