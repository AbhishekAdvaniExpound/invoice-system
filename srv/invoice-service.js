const cds = require("@sap/cds");

module.exports = async (srv) => {
  const bpService = await cds.connect.to("API_BUSINESS_PARTNER");

  srv.on("READ", "BusinessPartners", async (req) => {
    return bpService.run(req.query);
  });
};
