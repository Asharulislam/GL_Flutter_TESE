// To parse this JSON data, do
//
//     final TrainingModel = TrainingModelFromJson(jsonString);

import 'dart:convert';

// ignore: non_constant_identifier_names
TrainingModel TrainingModelFromJson(String str) => TrainingModel.fromJson(json.decode(str));

// ignore: non_constant_identifier_names
String TrainingModelToJson(TrainingModel data) => json.encode(data.toJson());

class TrainingModel {
  TrainingModel({
    required this.status,
    required this.message,
    required this.data,
  });

  int status;
  String message;
  List<Datum> data;

  factory TrainingModel.fromJson(Map<String, dynamic> json) => TrainingModel(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.date,
    required this.eventId,
    required this.courseId,
    required this.role,
    required this.leadTrainer,
    required this.leadTrainerPhone,
    required this.supportTrainer,
    required this.supportTrainerPhone,
    required this.invigilator,
    required this.invigilatorPhone,
    required this.workingDays,
    required this.courseName,
    required this.centerId,
    required this.centerName,
    required this.contactName,
    required this.contactNumber,
    required this.awardingBodyNum,
    required this.venueAddress,
    required this.venueLatitude,
    required this.venueLongitude,
    required this.eventDateTo,
    required this.roleDate,
    required this.todayBusy,
    required this.estimatedEarning,
    required this.startTimeFormated,
    required this.traineeCount,
    required this.classLiveLink,
    required this.runNumber,
    required this.trainees,
    required this.resits,
  });

  String date;
  int eventId;
  int courseId;
  String role;
  String leadTrainer;
  String leadTrainerPhone;
  String supportTrainer;
  String supportTrainerPhone;
  String invigilator;
  String invigilatorPhone;
  int workingDays;
  String courseName;
  int centerId;
  String centerName;
  String contactName;
  String contactNumber;
  String awardingBodyNum;
  String venueAddress;
  String venueLatitude;
  String venueLongitude;
  String eventDateTo;
  String roleDate;
  int todayBusy;
  int estimatedEarning;
  String startTimeFormated;
  int traineeCount;
  String classLiveLink;
  String runNumber;
  List<Resit> trainees;
  List<Resit> resits;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        date: json["date"],
        eventId: json["event_id"],
        courseId: json["course_id"],
        role: json["role"],
        leadTrainer: json["lead_trainer"],
        leadTrainerPhone: json["lead_trainer_phone"],
        supportTrainer: json["support_trainer"],
        supportTrainerPhone: json["support_trainer_phone"],
        invigilator: json["invigilator"],
        invigilatorPhone: json["invigilator_phone"],
        workingDays: json["working_days"],
        courseName: json["course_name"],
        centerId: json["center_id"],
        centerName: json["center_name"],
        contactName: json["contact_name"],
        contactNumber: json["contact_number"],
        awardingBodyNum: json["awarding_body_num"],
        venueAddress: json["venue_address"],
        venueLatitude: json["venue_latitude"],
        venueLongitude: json["venue_longitude"],
        eventDateTo: json["event_date_to"],
        roleDate: json["role_date"],
        todayBusy: json["today_busy"],
        estimatedEarning: json["estimated_earning"],
        startTimeFormated: json["start_time_formated"],
        traineeCount: json["trainee_count"],
        classLiveLink: json["class_live_link"],
        runNumber: json["run_number"],
        trainees:
            List<Resit>.from(json["trainees"].map((x) => Resit.fromJson(x))),
        resits: List<Resit>.from(json["resits"].map((x) => Resit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "event_id": eventId,
        "course_id": courseId,
        "role": role,
        "lead_trainer": leadTrainer,
        "lead_trainer_phone": leadTrainerPhone,
        "support_trainer": supportTrainer,
        "support_trainer_phone": supportTrainerPhone,
        "invigilator": invigilator,
        "invigilator_phone": invigilatorPhone,
        "working_days": workingDays,
        "course_name": courseName,
        "center_id": centerId,
        "center_name": centerName,
        "contact_name": contactName,
        "contact_number": contactNumber,
        "awarding_body_num": awardingBodyNum,
        "venue_address": venueAddress,
        "venue_latitude": venueLatitude,
        "venue_longitude": venueLongitude,
        "event_date_to": eventDateTo,
        "role_date": roleDate,
        "today_busy": todayBusy,
        "estimated_earning": estimatedEarning,
        "start_time_formated": startTimeFormated,
        "trainee_count": traineeCount,
        "class_live_link": classLiveLink,
        "run_number": runNumber,
        "trainees": List<dynamic>.from(trainees.map((x) => x.toJson())),
        "resits": List<dynamic>.from(resits.map((x) => x.toJson())),
      };
}

class Resit {
  Resit({
    required this.id,
     this.title,
    required this.name,
    required this.middleName,
    required this.lname,
    required this.email,
    required this.address1,
     this.address2,
    required this.postCode,
    required this.city,
    required this.telephone,
    required this.orderId,
    required this.courseId,
    required this.venueId,
    required this.venueAliasId,
    required this.venueAddressId,
    required this.locationId,
    required this.centerId,
    required this.previousLocid,
    required this.courseStartDate,
    required this.courseEndDate,
    required this.coursePrice,
    required this.shipping,
    required this.paymentPlan,
    required this.passGuarrantee,
    required this.earlyBirdPrice,
    this.refundAmount,
    this.extraCharges,
    required this.onthedayCoursePrice,
    this.depositCoursePrice,
    this.fbDiscount,
    this.twitterDiscount,
    this.trainingMaterial,
    required this.shirtSize,
    required this.hearAboutUs,
   this.specifyHear,
    this.payment,
    this.result,
    required this.unit1Result,
    required this.unit2Result,
    required this.unit3Result,
    required this.unit4Result,
    this.attendance,
     this.certificate,
    this.dispatchDate,
    this.awardingBody,
    this.paymentStatus,
    required this.paymentReference,
     this.upgradedTransId,
     this.trackingNumber,
     this.traineeNotes,
    required this.traineeAddedNotes,
    this.notesForTrainer,
    this.gender,
    this.dob,
    required this.ethnicOriginId,
    this.discountApplied,
    required this.discountAmount,
    required this.isDiscountFullFree,
    this.paymentThrough,
    required this.depositAmountPaid,
     this.depositAmountDue,
    this.deposit,
    required this.cpdBh,
    required this.cpdEfaw,
    required this.cpdCctv,
    required this.cpdDs,
    required this.cpdDsEfaw,
    required this.cpdHcPi,
    required this.cpdUg,
    required this.cpd,
    required this.cpdCard,
    required this.cpdCashChq,
    required this.cseEnrollForCse,
    required this.cseComplete,
    required this.cseVerified,
    required this.cseBookedBy,
    required this.cseBookedByTrainerId,
    required this.cseBookedByAgentId,
    required this.cseDateOfCertification,
    required this.cseExpiry,
    required this.cseCertificateNumber,
    required this.cseDispatchedDate,
    this.bookedFrom,
    required this.progressField,
    required this.agentId,
    required this.trainerId,
    this.onlinePaymentDate,
    required this.paymentReceived,
    required this.courseUpdate,
    required this.courseUpdateAmount,
    required this.courseUpdateDate,
    required this.couponApplied,
    required this.couponAmount,
    required this.fbId,
    required this.mailcount,
    this.discount,
    this.miles,
    required this.unsubscribe,
    required this.status,
    required this.transactionStatus,
    required this.cancelStatus,
    this.cDespatchedDate,
    this.paymentTo,
    this.trainerFlag,
    required this.courseDiscount,
    required this.createdDate,
    required this.modified,
    this.emailStatus,
    required this.messageId,
    required this.traineeStatus,
    required this.createdAt,
    required this.isUpgraded,
    required this.uoe,
    required this.updatedAt,
    this.certificateReturnedDate,
    this.certificateResentDate,
    required this.reviewStatus,
    required this.nLeadId,
    required this.isCourseBundle,
    required this.depositTransactionId,
    this.sendReview,
    this.bookingPage,
    this.cc,
    required this.declinedUpgrade,
    required this.additionalAmount,
    required this.requestRefund,
    required this.findCourse,
    required this.hideTrainee,
    required this.licensePrice,
    required this.holdCertificate,
    required this.receiptUrl,
    required this.ebookPrice,
    required this.learnerPackPrice,
    this.resultUpdateDate,
    required this.elearningEmail,
    required this.groupADoc,
    required this.groupAbDoc,
    required this.groupBDoc,
    this.resetDocumentIdSmsSendAt,
    this.admissionProcessStatus,
    required this.checkedIn,
    required this.elearningCompleted,
    required this.efawElearningComplete,
    required this.elearningCompletedThroughOrderCourseId,
    required this.idDocCompleted,
    required this.certificateFile,
    required this.delayedResultEmailSent,
    required this.lo1,
    required this.lo2,
    required this.lo3,
    required this.lo4,
    required this.lo5,
    required this.lo6,
    required this.lo7,
    required this.lo8,
    required this.efawAssessmentMarked,
    required this.efawAttended,
    required this.efawAssessmentPassOrFail,
    required this.metAll,
    required this.handcuffResult,
    required this.noOfReschedule,
    this.efawElearningStatus,
    required this.efawPrice,
     this.refundReason,
     this.refundOtherReason,
    required this.promoCodeId,
    required this.promoCodeDiscount,
    required this.fireMarshall,
    required this.riskAssessment,
    required this.mentalHealthAwareness,
    required this.workplaceHealthAndSafety,
    required this.cvBoosterPack,
    required this.cscs,
    required this.sameDayResults,
    required this.isFromNoPassNoFee,
    required this.isQualhubAndDsAddEbook,
    required this.partRefundAmount,
    this.employerCompany,
    this.employerLastName,
    this.employerFirstName,
    this.employerId,
    this.employerEmail,
    this.paymentIntentIdPartnerPortal,
    required this.webhookStatusPartnerPortal,
    this.paymentIntentIdManageBooking,
    required this.isResit,
    required this.isRescheduled,
    this.paymentPlanName,
     this.units,
    required this.plan,
    this.bookingTags,
  });

  int id;
  String? title;
  String name;
  String middleName;
  String lname;
  String email;
  String address1;
  String? address2;
  String postCode;
  String city;
  String telephone;
  int orderId;
  int courseId;
  int venueId;
  int venueAliasId;
  int venueAddressId;
  int locationId;
  int centerId;
  String previousLocid;
  DateTime courseStartDate;
  String courseEndDate;
  double coursePrice;
  String shipping;
  int paymentPlan;
  int passGuarrantee;
  int earlyBirdPrice;
  dynamic refundAmount;
  dynamic extraCharges;
  int onthedayCoursePrice;
  dynamic depositCoursePrice;
  dynamic fbDiscount;
  dynamic twitterDiscount;
  dynamic trainingMaterial;
  String shirtSize;
  String hearAboutUs;
  String? specifyHear;
  Payment? payment;
  Result? result;
  String unit1Result;
  String unit2Result;
  String unit3Result;
  String unit4Result;
  Attendance? attendance;
  String? certificate;
  OnlinePaymentDate? dispatchDate;
  AwardingBody? awardingBody;
  PaymentStatus? paymentStatus;
  String paymentReference;
  String? upgradedTransId;
  String? trackingNumber;
  String? traineeNotes;
  int traineeAddedNotes;
  String? notesForTrainer;
  String? gender;
  dynamic dob;
  int ethnicOriginId;
  String? discountApplied;
  double discountAmount;
  int isDiscountFullFree;
  PaymentThrough? paymentThrough;
  double depositAmountPaid;
  String? depositAmountDue;
  dynamic deposit;
  int cpdBh;
  String cpdEfaw;
  String cpdCctv;
  int cpdDs;
  int cpdDsEfaw;
  String cpdHcPi;
  String cpdUg;
  String cpd;
  String cpdCard;
  String cpdCashChq;
  String cseEnrollForCse;
  String cseComplete;
  String cseVerified;
  String cseBookedBy;
  int cseBookedByTrainerId;
  int cseBookedByAgentId;
  String cseDateOfCertification;
  String cseExpiry;
  String cseCertificateNumber;
  String cseDispatchedDate;
  BookedFrom? bookedFrom;
  String progressField;
  int agentId;
  int trainerId;
  OnlinePaymentDate? onlinePaymentDate;
  String paymentReceived;
  String courseUpdate;
  String courseUpdateAmount;
  String courseUpdateDate;
  String couponApplied;
  String couponAmount;
  String fbId;
  int mailcount;
  dynamic discount;
  dynamic miles;
  int? unsubscribe;
  int status;
  int transactionStatus;
  int cancelStatus;
  CDespatchedDate? cDespatchedDate;
  dynamic paymentTo;
  TrainerFlag? trainerFlag;
  int courseDiscount;
  DateTime createdDate;
  DateTime modified;
  EmailStatus? emailStatus;
  String messageId;
  int traineeStatus;
  DateTime createdAt;
  int isUpgraded;
  int uoe;
  DateTime updatedAt;
  dynamic certificateReturnedDate;
  dynamic certificateResentDate;
  int reviewStatus;
  int nLeadId;
  int isCourseBundle;
  String depositTransactionId;
  SendReview? sendReview;
  BookingPage? bookingPage;
  Cc? cc;
  int declinedUpgrade;
  int additionalAmount;
  int requestRefund;
  int findCourse;
  int hideTrainee;
  int licensePrice;
  int holdCertificate;
  String receiptUrl;
  int ebookPrice;
  int learnerPackPrice;
  dynamic resultUpdateDate;
  String elearningEmail;
  String groupADoc;
  String groupAbDoc;
  String groupBDoc;
  dynamic resetDocumentIdSmsSendAt;
  AdmissionProcessStatus? admissionProcessStatus;
  int checkedIn;
  int elearningCompleted;
  int efawElearningComplete;
  int elearningCompletedThroughOrderCourseId;
  int idDocCompleted;
  String certificateFile;
  int delayedResultEmailSent;
  int lo1;
  int lo2;
  int lo3;
  int lo4;
  int lo5;
  int lo6;
  int lo7;
  int lo8;
  int efawAssessmentMarked;
  int efawAttended;
  int efawAssessmentPassOrFail;
  int metAll;
  int handcuffResult;
  int noOfReschedule;
  EfawElearningStatus? efawElearningStatus;
  int efawPrice;
  int? refundReason;
  String? refundOtherReason;
  int promoCodeId;
  int promoCodeDiscount;
  int fireMarshall;
  int riskAssessment;
  int mentalHealthAwareness;
  int workplaceHealthAndSafety;
  int cvBoosterPack;
  int cscs;
  int sameDayResults;
  int isFromNoPassNoFee;
  int isQualhubAndDsAddEbook;
  int partRefundAmount;
  dynamic employerCompany;
  dynamic employerLastName;
  dynamic employerFirstName;
  dynamic employerId;
  dynamic employerEmail;
  dynamic paymentIntentIdPartnerPortal;
  int webhookStatusPartnerPortal;
  dynamic paymentIntentIdManageBooking;
  int isResit;
  int isRescheduled;
  Name? paymentPlanName;
  List<Unit>? units;
  Plan plan;
  dynamic bookingTags;

  factory Resit.fromJson(Map<String, dynamic> json) => Resit(
        id: json["id"],
        title: json["title"]??"",
        name: json["name"],
        middleName: json["middle_name"],
        lname: json["lname"],
        email: json["email"],
        address1: json["address1"],
        address2: json["address2"]??"" ,
        postCode: json["post_code"],
        city: json["city"],
        telephone: json["telephone"],
        orderId: json["order_id"],
        courseId: json["course_id"],
        venueId: json["venue_id"],
        venueAliasId: json["venue_alias_id"],
        venueAddressId: json["venue_address_id"],
        locationId: json["location_id"],
        centerId: json["center_id"],
        previousLocid: json["previous_locid"],
        courseStartDate: DateTime.parse(json["course_start_date"]),
        courseEndDate: json["course_end_date"],
        coursePrice: json["course_price"].toDouble(),
        shipping: json["shipping"],
        paymentPlan: json["payment_plan"],
        passGuarrantee: json["pass_guarrantee"],
        earlyBirdPrice: json["early_bird_price"],
        refundAmount: json["refund_amount"],
        extraCharges: json["extra_charges"],
        onthedayCoursePrice: json["ontheday_course_price"],
        depositCoursePrice: json["deposit_course_price"],
        fbDiscount: json["fb_discount"],
        twitterDiscount: json["twitter_discount"],
        trainingMaterial: json["training_material"],
        shirtSize: json["shirt_size"],
        hearAboutUs: json["hear_about_us"],
        specifyHear: json["specify_hear"]??"" ,
        payment: paymentValues.map[json["payment"]],
        result: resultValues.map[json["result"]],
        unit1Result: json["unit_1_result"],
        unit2Result: json["unit_2_result"],
        unit3Result: json["unit_3_result"],
        unit4Result: json["unit_4_result"],
        attendance: attendanceValues.map[json["attendance"]],
        certificate: json["certificate"]??"",
        dispatchDate: onlinePaymentDateValues.map[json["dispatch_date"]],
        awardingBody: awardingBodyValues.map[json["awarding_body"]],
        paymentStatus: paymentStatusValues.map[json["payment_status"]],
        paymentReference: json["payment_reference"],
        upgradedTransId:json["upgraded_trans_id"]??"",
        trackingNumber:
            json["tracking_number"]??"",
        traineeNotes:
            json["trainee_notes"]??"",
        traineeAddedNotes: json["trainee_added_notes"],
        notesForTrainer: 
            json["notes_for_trainer"]??"",
        gender:  json["gender"]??"",
        dob: json["dob"],
        ethnicOriginId: json["ethnic_origin_id"],
        discountApplied:
             json["discount_applied"]??"",
        discountAmount: json["discount_amount"].toDouble(),
        isDiscountFullFree: json["is_discount_full_free"],
        paymentThrough: paymentThroughValues.map[json["payment_through"]],
        depositAmountPaid: json["deposit_amount_paid"].toDouble(),
        depositAmountDue: json["deposit_amount_due"]??"",
        deposit: json["deposit"],
        cpdBh: json["cpd_bh"],
        cpdEfaw: json["cpd_EFAW"],
        cpdCctv: json["cpd_CCTV"],
        cpdDs: json["cpd_ds"],
        cpdDsEfaw: json["cpd_ds_efaw"],
        cpdHcPi: json["cpd_hc_pi"],
        cpdUg: json["cpd_ug"],
        cpd: json["cpd"],
        cpdCard: json["cpd_card"],
        cpdCashChq: json["cpd_cash_chq"],
        cseEnrollForCse: json["cse_enroll_for_cse"],
        cseComplete: json["cse_complete"],
        cseVerified: json["cse_verified"],
        cseBookedBy: json["cse_booked_by"],
        cseBookedByTrainerId: json["cse_booked_by_trainer_id"],
        cseBookedByAgentId: json["cse_booked_by_agent_id"],
        cseDateOfCertification: json["cse_date_of_certification"],
        cseExpiry: json["cse_expiry"],
        cseCertificateNumber: json["cse_certificate_number"],
        cseDispatchedDate: json["cse_dispatched_date"],
        bookedFrom: bookedFromValues.map[json["booked_from"]],
        progressField: json["progress_field"],
        agentId: json["agent_id"],
        trainerId: json["trainer_id"],
        onlinePaymentDate:
            onlinePaymentDateValues.map[json["online_payment_date"]],
        paymentReceived: json["payment_received"],
        courseUpdate: json["course_update"],
        courseUpdateAmount: json["course_update_amount"],
        courseUpdateDate: json["course_update_date"],
        couponApplied: json["coupon_applied"],
        couponAmount: json["coupon_amount"],
        fbId: json["fb_id"],
        mailcount: json["mailcount"],
        discount: json["discount"],
        miles: json["miles"],
        unsubscribe: json["unsubscribe"]??0,
        status: json["status"],
        transactionStatus: json["transaction_status"],
        cancelStatus: json["cancel_status"],
        cDespatchedDate: cDespatchedDateValues.map[json["c_despatched_date"]],
        paymentTo: json["payment_to"],
        trainerFlag: trainerFlagValues.map[json["trainer_flag"]],
        courseDiscount: json["course_discount"],
        createdDate: DateTime.parse(json["created_date"]),
        modified: DateTime.parse(json["modified"]),
        emailStatus: emailStatusValues.map[json["email_status"]],
        messageId: json["message_id"],
        traineeStatus: json["trainee_status"],
        createdAt: DateTime.parse(json["created_at"]),
        isUpgraded: json["is_upgraded"],
        uoe: json["uoe"],
        updatedAt: DateTime.parse(json["updated_at"]),
        certificateReturnedDate: json["certificate_returned_date"],
        certificateResentDate: json["certificate_resent_date"],
        reviewStatus: json["review_status"],
        nLeadId: json["n_lead_id"],
        isCourseBundle: json["is_course_bundle"],
        depositTransactionId: json["deposit_transaction_id"],
        sendReview: sendReviewValues.map[json["send_review"]],
        bookingPage: bookingPageValues.map[json["booking_page"]],
        cc: ccValues.map[json["cc"]],
        declinedUpgrade: json["declined_upgrade"],
        additionalAmount: json["additional_amount"],
        requestRefund: json["request_refund"],
        findCourse: json["find_course"],
        hideTrainee: json["hide_trainee"],
        licensePrice: json["license_price"],
        holdCertificate: json["hold_certificate"],
        receiptUrl: json["receipt_url"],
        ebookPrice: json["ebook_price"],
        learnerPackPrice: json["learner_pack_price"],
        resultUpdateDate: json["result_update_date"],
        elearningEmail: json["elearning_email"],
        groupADoc: json["group_a_doc"],
        groupAbDoc: json["group_ab_doc"],
        groupBDoc: json["group_b_doc"],
        resetDocumentIdSmsSendAt: json["reset_document_id_sms_send_at"],
        admissionProcessStatus:
            admissionProcessStatusValues.map[json["admission_process_status"]],
        checkedIn: json["checked_in"],
        elearningCompleted: json["elearning_completed"],
        efawElearningComplete: json["efaw_elearning_complete"],
        elearningCompletedThroughOrderCourseId:
            json["elearning_completed_through_order_course_id"],
        idDocCompleted: json["id_doc_completed"],
        certificateFile: json["certificate_file"],
        delayedResultEmailSent: json["delayed_result_email_sent"],
        lo1: json["lo1"],
        lo2: json["lo2"],
        lo3: json["lo3"],
        lo4: json["lo4"],
        lo5: json["lo5"],
        lo6: json["lo6"],
        lo7: json["lo7"],
        lo8: json["lo8"],
        efawAssessmentMarked: json["efaw_assessment_marked"],
        efawAttended: json["efaw_attended"],
        efawAssessmentPassOrFail: json["efaw_assessment_pass_or_fail"],
        metAll: json["met_all"],
        handcuffResult: json["handcuff_result"],
        noOfReschedule: json["no_of_reschedule"],
        efawElearningStatus:
            efawElearningStatusValues.map[json["efaw_elearning_status"]],
        efawPrice: json["efaw_price"],
        refundReason:
            json["refund_reason"]??0,
        refundOtherReason:  json["refund_other_reason"]??"",
        promoCodeId: json["promo_code_id"],
        promoCodeDiscount: json["promo_code_discount"],
        fireMarshall: json["fire_marshall"],
        riskAssessment: json["risk_assessment"],
        mentalHealthAwareness: json["mental_health_awareness"],
        workplaceHealthAndSafety: json["workplace_health_and_safety"],
        cvBoosterPack: json["cv_booster_pack"],
        cscs: json["cscs"],
        sameDayResults: json["same_day_results"],
        isFromNoPassNoFee: json["is_from_no_pass_no_fee"],
        isQualhubAndDsAddEbook: json["is_qualhub_and_ds_add_ebook"],
        partRefundAmount: json["part_refund_amount"],
        employerCompany: json["employer_company"],
        employerLastName: json["employer_last_name"],
        employerFirstName: json["employer_first_name"],
        employerId: json["employer_id"],
        employerEmail: json["employer_email"],
        paymentIntentIdPartnerPortal: json["payment_intent_id_partner_portal"],
        webhookStatusPartnerPortal: json["webhook_status_partner_portal"],
        paymentIntentIdManageBooking: json["payment_intent_id_manage_booking"],
        isResit: json["is_resit"],
        isRescheduled: json["is_rescheduled"],
        paymentPlanName: nameValues.map[json["payment_plan_name"]],
        units:  json["units"] == null ? null : List<Unit>.from(json["units"].map((x) => Unit.fromJson(x))),
        plan: Plan.fromJson(json["plan"]),
        bookingTags: json["booking_tags"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title":  title,
        "name": name,
        "middle_name": middleName,
        "lname": lname,
        "email": email,
        "address1": address1,
        "address2": address2,
        "post_code": postCode,
        "city": city,
        "telephone": telephone,
        "order_id": orderId,
        "course_id": courseId,
        "venue_id": venueId,
        "venue_alias_id": venueAliasId,
        "venue_address_id": venueAddressId,
        "location_id": locationId,
        "center_id": centerId,
        "previous_locid": previousLocid,
        "course_start_date":
            "${courseStartDate.year.toString().padLeft(4, '0')}-${courseStartDate.month.toString().padLeft(2, '0')}-${courseStartDate.day.toString().padLeft(2, '0')}",
        "course_end_date": courseEndDate,
        "course_price": coursePrice,
        "shipping": shipping,
        "payment_plan": paymentPlan,
        "pass_guarrantee": passGuarrantee,
        "early_bird_price": earlyBirdPrice,
        "refund_amount": refundAmount,
        "extra_charges": extraCharges,
        "ontheday_course_price": onthedayCoursePrice,
        "deposit_course_price": depositCoursePrice,
        "fb_discount": fbDiscount,
        "twitter_discount": twitterDiscount,
        "training_material": trainingMaterial,
        "shirt_size": shirtSize,
        "hear_about_us": hearAboutUs,
        "specify_hear": specifyHear,
        "payment": paymentValues.reverse[payment],
        "result": resultValues.reverse[result],
        "unit_1_result": unit1Result,
        "unit_2_result": unit2Result,
        "unit_3_result": unit3Result,
        "unit_4_result": unit4Result,
        "attendance": attendanceValues.reverse[attendance],
        "certificate":  certificate,
        "dispatch_date":  onlinePaymentDateValues.reverse[dispatchDate],
        "awarding_body": awardingBodyValues.reverse[awardingBody],
        "payment_status": paymentStatusValues.reverse[paymentStatus],
        "payment_reference": paymentReference,
        "upgraded_trans_id": upgradedTransId,
        "tracking_number": trackingNumber,
        "trainee_notes":  traineeNotes,
        "trainee_added_notes": traineeAddedNotes,
        "notes_for_trainer": notesForTrainer,
        "gender":  gender,
        "dob": dob,
        "ethnic_origin_id": ethnicOriginId,
        "discount_applied": discountApplied,
        "discount_amount": discountAmount,
        "is_discount_full_free": isDiscountFullFree,
        "payment_through": paymentThroughValues.reverse[paymentThrough],
        "deposit_amount_paid": depositAmountPaid,
        "deposit_amount_due":
             depositAmountDue,
        "deposit": deposit,
        "cpd_bh": cpdBh,
        "cpd_EFAW": cpdEfaw,
        "cpd_CCTV": cpdCctv,
        "cpd_ds": cpdDs,
        "cpd_ds_efaw": cpdDsEfaw,
        "cpd_hc_pi": cpdHcPi,
        "cpd_ug": cpdUg,
        "cpd": cpd,
        "cpd_card": cpdCard,
        "cpd_cash_chq": cpdCashChq,
        "cse_enroll_for_cse": cseEnrollForCse,
        "cse_complete": cseComplete,
        "cse_verified": cseVerified,
        "cse_booked_by": cseBookedBy,
        "cse_booked_by_trainer_id": cseBookedByTrainerId,
        "cse_booked_by_agent_id": cseBookedByAgentId,
        "cse_date_of_certification": cseDateOfCertification,
        "cse_expiry": cseExpiry,
        "cse_certificate_number": cseCertificateNumber,
        "cse_dispatched_date": cseDispatchedDate,
        "booked_from": bookedFromValues.reverse[bookedFrom],
        "progress_field": progressField,
        "agent_id": agentId,
        "trainer_id": trainerId,
        "online_payment_date":
            onlinePaymentDateValues.reverse[onlinePaymentDate],
        "payment_received": paymentReceived,
        "course_update": courseUpdate,
        "course_update_amount": courseUpdateAmount,
        "course_update_date": courseUpdateDate,
        "coupon_applied": couponApplied,
        "coupon_amount": couponAmount,
        "fb_id": fbId,
        "mailcount": mailcount,
        "discount": discount,
        "miles": miles,
        "unsubscribe":  unsubscribe,
        "status": status,
        "transaction_status": transactionStatus,
        "cancel_status": cancelStatus,
        "c_despatched_date": cDespatchedDateValues.reverse[cDespatchedDate],
        "payment_to": paymentTo,
        "trainer_flag": trainerFlagValues.reverse[trainerFlag],
        "course_discount": courseDiscount,
        "created_date": createdDate.toIso8601String(),
        "modified": modified.toIso8601String(),
        "email_status": emailStatusValues.reverse[emailStatus],
        "message_id": messageId,
        "trainee_status": traineeStatus,
        "created_at": createdAt.toIso8601String(),
        "is_upgraded": isUpgraded,
        "uoe": uoe,
        "updated_at": updatedAt.toIso8601String(),
        "certificate_returned_date": certificateReturnedDate,
        "certificate_resent_date": certificateResentDate,
        "review_status": reviewStatus,
        "n_lead_id": nLeadId,
        "is_course_bundle": isCourseBundle,
        "deposit_transaction_id": depositTransactionId,
        "send_review": sendReviewValues.reverse[sendReview],
        "booking_page": bookingPageValues.reverse[bookingPage],
        "cc": ccValues.reverse[cc],
        "declined_upgrade": declinedUpgrade,
        "additional_amount": additionalAmount,
        "request_refund": requestRefund,
        "find_course": findCourse,
        "hide_trainee": hideTrainee,
        "license_price": licensePrice,
        "hold_certificate": holdCertificate,
        "receipt_url": receiptUrl,
        "ebook_price": ebookPrice,
        "learner_pack_price": learnerPackPrice,
        "result_update_date": resultUpdateDate,
        "elearning_email": elearningEmail,
        "group_a_doc": groupADoc,
        "group_ab_doc": groupAbDoc,
        "group_b_doc": groupBDoc,
        "reset_document_id_sms_send_at": resetDocumentIdSmsSendAt,
        "admission_process_status":
            admissionProcessStatusValues.reverse[admissionProcessStatus],
        "checked_in": checkedIn,
        "elearning_completed": elearningCompleted,
        "efaw_elearning_complete": efawElearningComplete,
        "elearning_completed_through_order_course_id":
            elearningCompletedThroughOrderCourseId,
        "id_doc_completed": idDocCompleted,
        "certificate_file": certificateFile,
        "delayed_result_email_sent": delayedResultEmailSent,
        "lo1": lo1,
        "lo2": lo2,
        "lo3": lo3,
        "lo4": lo4,
        "lo5": lo5,
        "lo6": lo6,
        "lo7": lo7,
        "lo8": lo8,
        "efaw_assessment_marked": efawAssessmentMarked,
        "efaw_attended": efawAttended,
        "efaw_assessment_pass_or_fail": efawAssessmentPassOrFail,
        "met_all": metAll,
        "handcuff_result": handcuffResult,
        "no_of_reschedule": noOfReschedule,
        "efaw_elearning_status":
            efawElearningStatusValues.reverse[efawElearningStatus],
        "efaw_price": efawPrice,
        "refund_reason":  refundReason,
        "refund_other_reason":
             refundOtherReason,
        "promo_code_id": promoCodeId,
        "promo_code_discount": promoCodeDiscount,
        "fire_marshall": fireMarshall,
        "risk_assessment": riskAssessment,
        "mental_health_awareness": mentalHealthAwareness,
        "workplace_health_and_safety": workplaceHealthAndSafety,
        "cv_booster_pack": cvBoosterPack,
        "cscs": cscs,
        "same_day_results": sameDayResults,
        "is_from_no_pass_no_fee": isFromNoPassNoFee,
        "is_qualhub_and_ds_add_ebook": isQualhubAndDsAddEbook,
        "part_refund_amount": partRefundAmount,
        "employer_company": employerCompany,
        "employer_last_name": employerLastName,
        "employer_first_name": employerFirstName,
        "employer_id": employerId,
        "employer_email": employerEmail,
        "payment_intent_id_partner_portal": paymentIntentIdPartnerPortal,
        "webhook_status_partner_portal": webhookStatusPartnerPortal,
        "payment_intent_id_manage_booking": paymentIntentIdManageBooking,
        "is_resit": isResit,
        "is_rescheduled": isRescheduled,
        "payment_plan_name": nameValues.reverse[paymentPlanName],
        "units":  units == null ? null: List<dynamic>.from(units!.map((x) => x.toJson())),
        "plan": plan.toJson(),
        "booking_tags": bookingTags,
      };
}

enum AdmissionProcessStatus { COMPLETED }

final admissionProcessStatusValues =
    EnumValues({"Completed": AdmissionProcessStatus.COMPLETED});

enum Attendance { ATTENDED, PENDING, EMPTY }

final attendanceValues = EnumValues({
  "Attended": Attendance.ATTENDED,
  "": Attendance.EMPTY,
  "Pending": Attendance.PENDING
});

enum AwardingBody { LASER_LEARNING_AWARDS, EMPTY }

final awardingBodyValues = EnumValues({
  "": AwardingBody.EMPTY,
  "LASER LEARNING AWARDS": AwardingBody.LASER_LEARNING_AWARDS
});

enum BookedFrom { GL, GET_LICENSED_APP }

final bookedFromValues = EnumValues(
    {"Get-Licensed App": BookedFrom.GET_LICENSED_APP, "GL": BookedFrom.GL});

enum BookingPage {
  GL_MAIN_CHECKOUT,
  GL_MAIN_CHECKOUT_PAGE,
  GL_TRAINEE_ADD_PAGE
}

final bookingPageValues = EnumValues({
  "GL-Main Checkout": BookingPage.GL_MAIN_CHECKOUT,
  "GL-Main Checkout Page": BookingPage.GL_MAIN_CHECKOUT_PAGE,
  "GL-Trainee Add Page": BookingPage.GL_TRAINEE_ADD_PAGE
});

enum CDespatchedDate { THE_00000000000000 }

final cDespatchedDateValues =
    EnumValues({"0000-00-00 00:00:00": CDespatchedDate.THE_00000000000000});

enum Cc { JADE_OGBONSON_GOUGH_KELLY_CO_UK, EMPTY }

final ccValues = EnumValues({
  "": Cc.EMPTY,
  "jade.ogbonson@gough-kelly.co.uk": Cc.JADE_OGBONSON_GOUGH_KELLY_CO_UK
});

enum OnlinePaymentDate { THE_00000000 }

final onlinePaymentDateValues =
    EnumValues({"0000-00-00": OnlinePaymentDate.THE_00000000});

enum EfawElearningStatus { EMPTY, NOT_ENROLLED }

final efawElearningStatusValues = EnumValues({
  "": EfawElearningStatus.EMPTY,
  "Not Enrolled": EfawElearningStatus.NOT_ENROLLED
});

enum EmailStatus { DELIVERED, OPEN }

final emailStatusValues =
    EnumValues({"delivered": EmailStatus.DELIVERED, "open": EmailStatus.OPEN});

enum Payment { NEW_PRICE, WALK_IN, TELEPHONE }

final paymentValues = EnumValues({
  "NewPrice": Payment.NEW_PRICE,
  "Telephone": Payment.TELEPHONE,
  "Walk In": Payment.WALK_IN
});

enum Name { BRONZE, GOLD }

final nameValues = EnumValues({"Bronze": Name.BRONZE, "Gold": Name.GOLD});

enum PaymentStatus { PAID }

final paymentStatusValues = EnumValues({"Paid": PaymentStatus.PAID});

enum PaymentThrough { STRIPE, APPLE_PAY, LAY_BUY, PAY_PAL }

final paymentThroughValues = EnumValues({
  "ApplePay": PaymentThrough.APPLE_PAY,
  "LayBuy": PaymentThrough.LAY_BUY,
  "PayPal": PaymentThrough.PAY_PAL,
  "Stripe": PaymentThrough.STRIPE
});

class Plan {
  Plan({
    required this.id,
    required this.name,
    required this.amount,
    required this.sortNum,
    this.action,
    this.created,
    this.modified,
  });

  int id;
  Name? name;
  int amount;
  int sortNum;
  Action? action;
  CDespatchedDate? created;
  CDespatchedDate? modified;

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
        id: json["id"],
        name: nameValues.map[json["name"]],
        amount: json["amount"],
        sortNum: json["sort_num"],
        action: actionValues.map[json["action"]],
        created: cDespatchedDateValues.map[json["created"]],
        modified: cDespatchedDateValues.map[json["modified"]],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "amount": amount,
        "sort_num": sortNum,
        "action": actionValues.reverse[action],
        "created": cDespatchedDateValues.reverse[created],
        "modified": cDespatchedDateValues.reverse[modified],
      };
}

enum Action { NONE, ADD }

final actionValues = EnumValues({"add": Action.ADD, "none": Action.NONE});

enum Result { FAIL, AWAITING_RESULT }

final resultValues = EnumValues(
    {"Awaiting Result": Result.AWAITING_RESULT, "Fail": Result.FAIL});

enum SendReview { YES }

final sendReviewValues = EnumValues({"Yes": SendReview.YES});

enum TrainerFlag { NO }

final trainerFlagValues = EnumValues({"no": TrainerFlag.NO});

class Unit {
  Unit({
    required this.unitNum,
    required this.unitText,
  });

  int unitNum;
  String unitText;

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        unitNum: json["unit_num"],
        unitText: json["unit_text"],
      );

  Map<String, dynamic> toJson() => {
        "unit_num": unitNum,
        "unit_text": unitText,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
