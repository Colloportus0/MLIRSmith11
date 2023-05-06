module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(-1 : i64) : i64
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.null : !llvm.ptr<i32>
    %20 = llvm.getelementptr %19[%14] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %21 = llvm.ptrtoint %20 : !llvm.ptr<i32> to i64
    %22 = llvm.mlir.constant(16 : index) : i64
    %23 = llvm.add %21, %22  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr<i8>
    %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<i32> to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %22, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %22  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr<i32>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %14, %37[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %15, %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %15, %41[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%46 : i64)
  ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb11
    %50 = llvm.icmp "slt" %49, %47 : i64
    llvm.cond_br %50, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%51 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb10
    %55 = llvm.icmp "slt" %54, %52 : i64
    llvm.cond_br %55, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%56 : i64)
  ^bb5(%59: i64):  // 2 preds: ^bb4, ^bb9
    %60 = llvm.icmp "slt" %59, %57 : i64
    llvm.cond_br %60, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%61 : i64)
  ^bb7(%64: i64):  // 2 preds: ^bb6, ^bb8
    %65 = llvm.icmp "slt" %64, %62 : i64
    llvm.cond_br %65, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %66 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.add %49, %54  : i64
    %68 = llvm.add %67, %59  : i64
    %69 = llvm.add %68, %64  : i64
    %70 = llvm.getelementptr %66[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %71 = llvm.load %70 : !llvm.ptr<i32>
    %72 = llvm.mlir.constant(false) : i1
    %73 = "llvm.intr.abs"(%71, %72) : (i32, i1) -> i32
    %74 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.add %49, %54  : i64
    %76 = llvm.add %75, %59  : i64
    %77 = llvm.add %76, %64  : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %73, %78 : !llvm.ptr<i32>
    %79 = llvm.add %64, %63  : i64
    llvm.br ^bb7(%79 : i64)
  ^bb9:  // pred: ^bb7
    %80 = llvm.add %59, %58  : i64
    llvm.br ^bb5(%80 : i64)
  ^bb10:  // pred: ^bb5
    %81 = llvm.add %54, %53  : i64
    llvm.br ^bb3(%81 : i64)
  ^bb11:  // pred: ^bb3
    %82 = llvm.add %49, %48  : i64
    llvm.br ^bb1(%82 : i64)
  ^bb12:  // pred: ^bb1
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.null : !llvm.ptr<i64>
    %89 = llvm.getelementptr %88[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i64> to i64
    %91 = llvm.mlir.constant(16 : index) : i64
    %92 = llvm.add %90, %91  : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.bitcast %93 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i64> to i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.sub %91, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.urem %98, %91  : i64
    %100 = llvm.sub %98, %99  : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr<i64>
    %102 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %103 = llvm.insertvalue %94, %102[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %83, %106[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %84, %107[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %85, %108[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %86, %109[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %86, %112[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%115 : i64)
  ^bb13(%118: i64):  // 2 preds: ^bb12, ^bb23
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%120 : i64)
  ^bb15(%123: i64):  // 2 preds: ^bb14, ^bb22
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%125 : i64)
  ^bb17(%128: i64):  // 2 preds: ^bb16, ^bb21
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%130 : i64)
  ^bb19(%133: i64):  // 2 preds: ^bb18, ^bb20
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %135 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.add %118, %123  : i64
    %137 = llvm.add %136, %128  : i64
    %138 = llvm.add %137, %133  : i64
    %139 = llvm.getelementptr %135[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %140 = llvm.load %139 : !llvm.ptr<i32>
    %141 = llvm.sext %140 : i32 to i64
    %142 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.add %118, %123  : i64
    %144 = llvm.add %143, %128  : i64
    %145 = llvm.add %144, %133  : i64
    %146 = llvm.getelementptr %142[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %146 : !llvm.ptr<i64>
    %147 = llvm.add %133, %132  : i64
    llvm.br ^bb19(%147 : i64)
  ^bb21:  // pred: ^bb19
    %148 = llvm.add %128, %127  : i64
    llvm.br ^bb17(%148 : i64)
  ^bb22:  // pred: ^bb17
    %149 = llvm.add %123, %122  : i64
    llvm.br ^bb15(%149 : i64)
  ^bb23:  // pred: ^bb15
    %150 = llvm.add %118, %117  : i64
    llvm.br ^bb13(%150 : i64)
  ^bb24:  // pred: ^bb13
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.null : !llvm.ptr<i64>
    %156 = llvm.getelementptr %155[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<i64> to i64
    %158 = llvm.mlir.constant(16 : index) : i64
    %159 = llvm.add %157, %158  : i64
    %160 = llvm.call @malloc(%159) : (i64) -> !llvm.ptr<i8>
    %161 = llvm.bitcast %160 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %162 = llvm.ptrtoint %161 : !llvm.ptr<i64> to i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.sub %158, %163  : i64
    %165 = llvm.add %162, %164  : i64
    %166 = llvm.urem %165, %158  : i64
    %167 = llvm.sub %165, %166  : i64
    %168 = llvm.inttoptr %167 : i64 to !llvm.ptr<i64>
    %169 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %170 = llvm.insertvalue %161, %169[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.insertvalue %168, %170[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.insertvalue %172, %171[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.insertvalue %151, %173[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.insertvalue %152, %174[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.insertvalue %153, %175[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %177 = llvm.insertvalue %152, %176[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.insertvalue %153, %177[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %179 = llvm.insertvalue %154, %178[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%180 : i64)
  ^bb25(%183: i64):  // 2 preds: ^bb24, ^bb32
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%185 : i64)
  ^bb27(%188: i64):  // 2 preds: ^bb26, ^bb31
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%190 : i64)
  ^bb29(%193: i64):  // 2 preds: ^bb28, ^bb30
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %195 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %196 = llvm.add %183, %188  : i64
    %197 = llvm.add %196, %193  : i64
    %198 = llvm.getelementptr %195[%197] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %198 : !llvm.ptr<i64>
    %199 = llvm.add %193, %192  : i64
    llvm.br ^bb29(%199 : i64)
  ^bb31:  // pred: ^bb29
    %200 = llvm.add %188, %187  : i64
    llvm.br ^bb27(%200 : i64)
  ^bb32:  // pred: ^bb27
    %201 = llvm.add %183, %182  : i64
    llvm.br ^bb25(%201 : i64)
  ^bb33:  // pred: ^bb25
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%202 : i64)
  ^bb34(%205: i64):  // 2 preds: ^bb33, ^bb44
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%207 : i64)
  ^bb36(%210: i64):  // 2 preds: ^bb35, ^bb43
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%212 : i64)
  ^bb38(%215: i64):  // 2 preds: ^bb37, ^bb42
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%217 : i64)
  ^bb40(%220: i64):  // 2 preds: ^bb39, ^bb41
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %222 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.add %205, %210  : i64
    %224 = llvm.add %223, %215  : i64
    %225 = llvm.add %224, %220  : i64
    %226 = llvm.getelementptr %222[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %227 = llvm.load %226 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.add %205, %210  : i64
    %230 = llvm.add %229, %215  : i64
    %231 = llvm.getelementptr %228[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %232 = llvm.load %231 : !llvm.ptr<i64>
    %233 = llvm.add %232, %227  : i64
    %234 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.add %205, %210  : i64
    %236 = llvm.add %235, %215  : i64
    %237 = llvm.getelementptr %234[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %233, %237 : !llvm.ptr<i64>
    %238 = llvm.add %220, %219  : i64
    llvm.br ^bb40(%238 : i64)
  ^bb42:  // pred: ^bb40
    %239 = llvm.add %215, %214  : i64
    llvm.br ^bb38(%239 : i64)
  ^bb43:  // pred: ^bb38
    %240 = llvm.add %210, %209  : i64
    llvm.br ^bb36(%240 : i64)
  ^bb44:  // pred: ^bb36
    %241 = llvm.add %205, %204  : i64
    llvm.br ^bb34(%241 : i64)
  ^bb45:  // pred: ^bb34
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.null : !llvm.ptr<i1>
    %248 = llvm.getelementptr %247[%242] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %249 = llvm.ptrtoint %248 : !llvm.ptr<i1> to i64
    %250 = llvm.mlir.constant(16 : index) : i64
    %251 = llvm.add %249, %250  : i64
    %252 = llvm.call @malloc(%251) : (i64) -> !llvm.ptr<i8>
    %253 = llvm.bitcast %252 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %254 = llvm.ptrtoint %253 : !llvm.ptr<i1> to i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.sub %250, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.urem %257, %250  : i64
    %259 = llvm.sub %257, %258  : i64
    %260 = llvm.inttoptr %259 : i64 to !llvm.ptr<i1>
    %261 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %262 = llvm.insertvalue %253, %261[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.insertvalue %264, %263[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %242, %265[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %243, %266[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %244, %267[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %245, %268[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %243, %269[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %244, %270[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %246, %272[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%274 : i64)
  ^bb46(%277: i64):  // 2 preds: ^bb45, ^bb56
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%279 : i64)
  ^bb48(%282: i64):  // 2 preds: ^bb47, ^bb55
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%284 : i64)
  ^bb50(%287: i64):  // 2 preds: ^bb49, ^bb54
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%289 : i64)
  ^bb52(%292: i64):  // 2 preds: ^bb51, ^bb53
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %294 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.add %277, %282  : i64
    %296 = llvm.add %295, %287  : i64
    %297 = llvm.add %296, %292  : i64
    %298 = llvm.getelementptr %294[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %299 = llvm.load %298 : !llvm.ptr<i32>
    %300 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.add %277, %282  : i64
    %302 = llvm.add %301, %287  : i64
    %303 = llvm.add %302, %292  : i64
    %304 = llvm.getelementptr %300[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %305 = llvm.load %304 : !llvm.ptr<i32>
    %306 = llvm.icmp "slt" %299, %305 : i32
    %307 = llvm.extractvalue %273[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.add %277, %282  : i64
    %309 = llvm.add %308, %287  : i64
    %310 = llvm.add %309, %292  : i64
    %311 = llvm.getelementptr %307[%310] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %306, %311 : !llvm.ptr<i1>
    %312 = llvm.add %292, %291  : i64
    llvm.br ^bb52(%312 : i64)
  ^bb54:  // pred: ^bb52
    %313 = llvm.add %287, %286  : i64
    llvm.br ^bb50(%313 : i64)
  ^bb55:  // pred: ^bb50
    %314 = llvm.add %282, %281  : i64
    llvm.br ^bb48(%314 : i64)
  ^bb56:  // pred: ^bb48
    %315 = llvm.add %277, %276  : i64
    llvm.br ^bb46(%315 : i64)
  ^bb57:  // pred: ^bb46
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.null : !llvm.ptr<i32>
    %322 = llvm.getelementptr %321[%316] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i32> to i64
    %324 = llvm.mlir.constant(16 : index) : i64
    %325 = llvm.add %323, %324  : i64
    %326 = llvm.call @malloc(%325) : (i64) -> !llvm.ptr<i8>
    %327 = llvm.bitcast %326 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i32> to i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.sub %324, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.urem %331, %324  : i64
    %333 = llvm.sub %331, %332  : i64
    %334 = llvm.inttoptr %333 : i64 to !llvm.ptr<i32>
    %335 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %336 = llvm.insertvalue %327, %335[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %334, %336[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.insertvalue %338, %337[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %316, %339[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %317, %340[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %318, %341[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %319, %342[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %317, %343[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %318, %344[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %319, %345[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %320, %346[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%348 : i64)
  ^bb58(%351: i64):  // 2 preds: ^bb57, ^bb68
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%353 : i64)
  ^bb60(%356: i64):  // 2 preds: ^bb59, ^bb67
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%358 : i64)
  ^bb62(%361: i64):  // 2 preds: ^bb61, ^bb66
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%363 : i64)
  ^bb64(%366: i64):  // 2 preds: ^bb63, ^bb65
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %368 = llvm.extractvalue %273[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.add %351, %356  : i64
    %370 = llvm.add %369, %361  : i64
    %371 = llvm.add %370, %366  : i64
    %372 = llvm.getelementptr %368[%371] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %373 = llvm.load %372 : !llvm.ptr<i1>
    %374 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.add %351, %356  : i64
    %376 = llvm.add %375, %361  : i64
    %377 = llvm.add %376, %366  : i64
    %378 = llvm.getelementptr %374[%377] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %379 = llvm.load %378 : !llvm.ptr<i32>
    %380 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.add %351, %356  : i64
    %382 = llvm.add %381, %361  : i64
    %383 = llvm.add %382, %366  : i64
    %384 = llvm.getelementptr %380[%383] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %385 = llvm.load %384 : !llvm.ptr<i32>
    %386 = llvm.select %373, %379, %385 : i1, i32
    %387 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.add %351, %356  : i64
    %389 = llvm.add %388, %361  : i64
    %390 = llvm.add %389, %366  : i64
    %391 = llvm.getelementptr %387[%390] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %386, %391 : !llvm.ptr<i32>
    %392 = llvm.add %366, %365  : i64
    llvm.br ^bb64(%392 : i64)
  ^bb66:  // pred: ^bb64
    %393 = llvm.add %361, %360  : i64
    llvm.br ^bb62(%393 : i64)
  ^bb67:  // pred: ^bb62
    %394 = llvm.add %356, %355  : i64
    llvm.br ^bb60(%394 : i64)
  ^bb68:  // pred: ^bb60
    %395 = llvm.add %351, %350  : i64
    llvm.br ^bb58(%395 : i64)
  ^bb69:  // pred: ^bb58
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.null : !llvm.ptr<i64>
    %401 = llvm.getelementptr %400[%396] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %402 = llvm.ptrtoint %401 : !llvm.ptr<i64> to i64
    %403 = llvm.mlir.constant(16 : index) : i64
    %404 = llvm.add %402, %403  : i64
    %405 = llvm.call @malloc(%404) : (i64) -> !llvm.ptr<i8>
    %406 = llvm.bitcast %405 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %407 = llvm.ptrtoint %406 : !llvm.ptr<i64> to i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.sub %403, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.urem %410, %403  : i64
    %412 = llvm.sub %410, %411  : i64
    %413 = llvm.inttoptr %412 : i64 to !llvm.ptr<i64>
    %414 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %415 = llvm.insertvalue %406, %414[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %416 = llvm.insertvalue %413, %415[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.insertvalue %417, %416[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %419 = llvm.insertvalue %396, %418[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %420 = llvm.insertvalue %397, %419[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %421 = llvm.insertvalue %398, %420[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %422 = llvm.insertvalue %397, %421[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %423 = llvm.insertvalue %398, %422[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %424 = llvm.insertvalue %399, %423[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%425 : i64)
  ^bb70(%428: i64):  // 2 preds: ^bb69, ^bb77
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%430 : i64)
  ^bb72(%433: i64):  // 2 preds: ^bb71, ^bb76
    %434 = llvm.icmp "slt" %433, %431 : i64
    llvm.cond_br %434, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %435 = llvm.mlir.constant(0 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%435 : i64)
  ^bb74(%438: i64):  // 2 preds: ^bb73, ^bb75
    %439 = llvm.icmp "slt" %438, %436 : i64
    llvm.cond_br %439, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %440 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %441 = llvm.add %428, %433  : i64
    %442 = llvm.add %441, %438  : i64
    %443 = llvm.getelementptr %440[%442] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %443 : !llvm.ptr<i64>
    %444 = llvm.add %438, %437  : i64
    llvm.br ^bb74(%444 : i64)
  ^bb76:  // pred: ^bb74
    %445 = llvm.add %433, %432  : i64
    llvm.br ^bb72(%445 : i64)
  ^bb77:  // pred: ^bb72
    %446 = llvm.add %428, %427  : i64
    llvm.br ^bb70(%446 : i64)
  ^bb78:  // pred: ^bb70
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%447 : i64)
  ^bb79(%450: i64):  // 2 preds: ^bb78, ^bb89
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%452 : i64)
  ^bb81(%455: i64):  // 2 preds: ^bb80, ^bb88
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%457 : i64)
  ^bb83(%460: i64):  // 2 preds: ^bb82, ^bb87
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%462 : i64)
  ^bb85(%465: i64):  // 2 preds: ^bb84, ^bb86
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %467 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.add %450, %455  : i64
    %469 = llvm.add %468, %460  : i64
    %470 = llvm.add %469, %465  : i64
    %471 = llvm.getelementptr %467[%470] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %472 = llvm.load %471 : !llvm.ptr<i32>
    %473 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %474 = llvm.add %450, %455  : i64
    %475 = llvm.add %474, %465  : i64
    %476 = llvm.getelementptr %473[%475] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %477 = llvm.load %476 : !llvm.ptr<i64>
    %478 = llvm.icmp "slt" %477, %13 : i64
    %479 = llvm.select %478, %13, %477 : i1, i64
    %480 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.add %450, %455  : i64
    %482 = llvm.add %481, %479  : i64
    %483 = llvm.add %482, %465  : i64
    %484 = llvm.getelementptr %480[%483] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %485 = llvm.load %484 : !llvm.ptr<i32>
    %486 = llvm.icmp "slt" %472, %485 : i32
    %487 = llvm.select %486, %460, %479 : i1, i64
    %488 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %489 = llvm.add %450, %455  : i64
    %490 = llvm.add %489, %465  : i64
    %491 = llvm.getelementptr %488[%490] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %487, %491 : !llvm.ptr<i64>
    %492 = llvm.add %465, %464  : i64
    llvm.br ^bb85(%492 : i64)
  ^bb87:  // pred: ^bb85
    %493 = llvm.add %460, %459  : i64
    llvm.br ^bb83(%493 : i64)
  ^bb88:  // pred: ^bb83
    %494 = llvm.add %455, %454  : i64
    llvm.br ^bb81(%494 : i64)
  ^bb89:  // pred: ^bb81
    %495 = llvm.add %450, %449  : i64
    llvm.br ^bb79(%495 : i64)
  ^bb90:  // pred: ^bb79
    %496 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %497 = llvm.insertvalue %179, %496[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %498 = llvm.insertvalue %424, %497[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %498 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.getelementptr %50[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %105 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

