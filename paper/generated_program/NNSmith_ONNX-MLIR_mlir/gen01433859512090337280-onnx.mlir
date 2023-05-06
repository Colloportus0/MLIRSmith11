module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v2_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.null : !llvm.ptr<f32>
    %19 = llvm.getelementptr %18[%13] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %20 = llvm.ptrtoint %19 : !llvm.ptr<f32> to i64
    %21 = llvm.mlir.constant(16 : index) : i64
    %22 = llvm.add %20, %21  : i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr<i8>
    %24 = llvm.bitcast %23 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr<f32> to i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.sub %21, %26  : i64
    %28 = llvm.add %25, %27  : i64
    %29 = llvm.urem %28, %21  : i64
    %30 = llvm.sub %28, %29  : i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr<f32>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %33 = llvm.insertvalue %24, %32[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %13, %36[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %14, %37[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %15, %38[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %14, %40[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %15, %41[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%45 : i64)
  ^bb1(%48: i64):  // 2 preds: ^bb0, ^bb11
    %49 = llvm.icmp "slt" %48, %46 : i64
    llvm.cond_br %49, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%50 : i64)
  ^bb3(%53: i64):  // 2 preds: ^bb2, ^bb10
    %54 = llvm.icmp "slt" %53, %51 : i64
    llvm.cond_br %54, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%55 : i64)
  ^bb5(%58: i64):  // 2 preds: ^bb4, ^bb9
    %59 = llvm.icmp "slt" %58, %56 : i64
    llvm.cond_br %59, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%60 : i64)
  ^bb7(%63: i64):  // 2 preds: ^bb6, ^bb8
    %64 = llvm.icmp "slt" %63, %61 : i64
    llvm.cond_br %64, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %65 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.add %48, %53  : i64
    %67 = llvm.add %66, %58  : i64
    %68 = llvm.add %67, %63  : i64
    %69 = llvm.getelementptr %65[%68] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %70 = llvm.load %69 : !llvm.ptr<i32>
    %71 = llvm.sitofp %70 : i32 to f32
    %72 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.add %48, %53  : i64
    %74 = llvm.add %73, %58  : i64
    %75 = llvm.add %74, %63  : i64
    %76 = llvm.getelementptr %72[%75] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %71, %76 : !llvm.ptr<f32>
    %77 = llvm.add %63, %62  : i64
    llvm.br ^bb7(%77 : i64)
  ^bb9:  // pred: ^bb7
    %78 = llvm.add %58, %57  : i64
    llvm.br ^bb5(%78 : i64)
  ^bb10:  // pred: ^bb5
    %79 = llvm.add %53, %52  : i64
    llvm.br ^bb3(%79 : i64)
  ^bb11:  // pred: ^bb3
    %80 = llvm.add %48, %47  : i64
    llvm.br ^bb1(%80 : i64)
  ^bb12:  // pred: ^bb1
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.null : !llvm.ptr<i64>
    %87 = llvm.getelementptr %86[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i64> to i64
    %89 = llvm.mlir.constant(16 : index) : i64
    %90 = llvm.add %88, %89  : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %93 = llvm.ptrtoint %92 : !llvm.ptr<i64> to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %89, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.urem %96, %89  : i64
    %98 = llvm.sub %96, %97  : i64
    %99 = llvm.inttoptr %98 : i64 to !llvm.ptr<i64>
    %100 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %101 = llvm.insertvalue %92, %100[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %81, %104[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %82, %105[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %83, %106[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %84, %107[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %82, %108[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%113 : i64)
  ^bb13(%116: i64):  // 2 preds: ^bb12, ^bb23
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%118 : i64)
  ^bb15(%121: i64):  // 2 preds: ^bb14, ^bb22
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%123 : i64)
  ^bb17(%126: i64):  // 2 preds: ^bb16, ^bb21
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%128 : i64)
  ^bb19(%131: i64):  // 2 preds: ^bb18, ^bb20
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %133 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.add %116, %121  : i64
    %135 = llvm.add %134, %126  : i64
    %136 = llvm.add %135, %131  : i64
    %137 = llvm.getelementptr %133[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %138 = llvm.load %137 : !llvm.ptr<i32>
    %139 = llvm.sext %138 : i32 to i64
    %140 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.add %116, %121  : i64
    %142 = llvm.add %141, %126  : i64
    %143 = llvm.add %142, %131  : i64
    %144 = llvm.getelementptr %140[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %144 : !llvm.ptr<i64>
    %145 = llvm.add %131, %130  : i64
    llvm.br ^bb19(%145 : i64)
  ^bb21:  // pred: ^bb19
    %146 = llvm.add %126, %125  : i64
    llvm.br ^bb17(%146 : i64)
  ^bb22:  // pred: ^bb17
    %147 = llvm.add %121, %120  : i64
    llvm.br ^bb15(%147 : i64)
  ^bb23:  // pred: ^bb15
    %148 = llvm.add %116, %115  : i64
    llvm.br ^bb13(%148 : i64)
  ^bb24:  // pred: ^bb13
    %149 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %150 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %150, %149[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %151, %152[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.insertvalue %156, %155[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.insertvalue %158, %157[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.null : !llvm.ptr<i1>
    %166 = llvm.getelementptr %165[%160] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %167 = llvm.ptrtoint %166 : !llvm.ptr<i1> to i64
    %168 = llvm.mlir.constant(16 : index) : i64
    %169 = llvm.add %167, %168  : i64
    %170 = llvm.call @malloc(%169) : (i64) -> !llvm.ptr<i8>
    %171 = llvm.bitcast %170 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %172 = llvm.ptrtoint %171 : !llvm.ptr<i1> to i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.sub %168, %173  : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.urem %175, %168  : i64
    %177 = llvm.sub %175, %176  : i64
    %178 = llvm.inttoptr %177 : i64 to !llvm.ptr<i1>
    %179 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %180 = llvm.insertvalue %171, %179[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %178, %180[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.insertvalue %182, %181[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.insertvalue %160, %183[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %161, %184[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %162, %185[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %163, %186[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %161, %187[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %162, %188[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %163, %189[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %164, %190[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%192 : i64)
  ^bb25(%195: i64):  // 2 preds: ^bb24, ^bb35
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%197 : i64)
  ^bb27(%200: i64):  // 2 preds: ^bb26, ^bb34
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%202 : i64)
  ^bb29(%205: i64):  // 2 preds: ^bb28, ^bb33
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%207 : i64)
  ^bb31(%210: i64):  // 2 preds: ^bb30, ^bb32
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %212 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.add %195, %200  : i64
    %214 = llvm.add %213, %205  : i64
    %215 = llvm.add %214, %210  : i64
    %216 = llvm.getelementptr %212[%215] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %217 = llvm.load %216 : !llvm.ptr<i32>
    %218 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.add %195, %200  : i64
    %220 = llvm.add %219, %205  : i64
    %221 = llvm.add %220, %210  : i64
    %222 = llvm.getelementptr %218[%221] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %223 = llvm.load %222 : !llvm.ptr<i32>
    %224 = llvm.icmp "sgt" %217, %223 : i32
    %225 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.add %195, %200  : i64
    %227 = llvm.add %226, %205  : i64
    %228 = llvm.add %227, %210  : i64
    %229 = llvm.getelementptr %225[%228] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %224, %229 : !llvm.ptr<i1>
    %230 = llvm.add %210, %209  : i64
    llvm.br ^bb31(%230 : i64)
  ^bb33:  // pred: ^bb31
    %231 = llvm.add %205, %204  : i64
    llvm.br ^bb29(%231 : i64)
  ^bb34:  // pred: ^bb29
    %232 = llvm.add %200, %199  : i64
    llvm.br ^bb27(%232 : i64)
  ^bb35:  // pred: ^bb27
    %233 = llvm.add %195, %194  : i64
    llvm.br ^bb25(%233 : i64)
  ^bb36:  // pred: ^bb25
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.null : !llvm.ptr<i1>
    %240 = llvm.getelementptr %239[%234] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %241 = llvm.ptrtoint %240 : !llvm.ptr<i1> to i64
    %242 = llvm.mlir.constant(16 : index) : i64
    %243 = llvm.add %241, %242  : i64
    %244 = llvm.call @malloc(%243) : (i64) -> !llvm.ptr<i8>
    %245 = llvm.bitcast %244 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %246 = llvm.ptrtoint %245 : !llvm.ptr<i1> to i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.sub %242, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.urem %249, %242  : i64
    %251 = llvm.sub %249, %250  : i64
    %252 = llvm.inttoptr %251 : i64 to !llvm.ptr<i1>
    %253 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %254 = llvm.insertvalue %245, %253[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %252, %254[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.insertvalue %256, %255[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %234, %257[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %235, %258[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %236, %259[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %237, %260[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %235, %261[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %236, %262[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %237, %263[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%266 : i64)
  ^bb37(%269: i64):  // 2 preds: ^bb36, ^bb47
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%271 : i64)
  ^bb39(%274: i64):  // 2 preds: ^bb38, ^bb46
    %275 = llvm.icmp "slt" %274, %272 : i64
    llvm.cond_br %275, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%276 : i64)
  ^bb41(%279: i64):  // 2 preds: ^bb40, ^bb45
    %280 = llvm.icmp "slt" %279, %277 : i64
    llvm.cond_br %280, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%281 : i64)
  ^bb43(%284: i64):  // 2 preds: ^bb42, ^bb44
    %285 = llvm.icmp "slt" %284, %282 : i64
    llvm.cond_br %285, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %286 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.add %269, %274  : i64
    %288 = llvm.add %287, %279  : i64
    %289 = llvm.add %288, %284  : i64
    %290 = llvm.getelementptr %286[%289] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %291 = llvm.load %290 : !llvm.ptr<i32>
    %292 = llvm.icmp "ne" %291, %12 : i32
    %293 = llvm.extractvalue %265[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.add %269, %274  : i64
    %295 = llvm.add %294, %279  : i64
    %296 = llvm.add %295, %284  : i64
    %297 = llvm.getelementptr %293[%296] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %292, %297 : !llvm.ptr<i1>
    %298 = llvm.add %284, %283  : i64
    llvm.br ^bb43(%298 : i64)
  ^bb45:  // pred: ^bb43
    %299 = llvm.add %279, %278  : i64
    llvm.br ^bb41(%299 : i64)
  ^bb46:  // pred: ^bb41
    %300 = llvm.add %274, %273  : i64
    llvm.br ^bb39(%300 : i64)
  ^bb47:  // pred: ^bb39
    %301 = llvm.add %269, %268  : i64
    llvm.br ^bb37(%301 : i64)
  ^bb48:  // pred: ^bb37
    %302 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %303 = llvm.insertvalue %112, %302[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %304 = llvm.insertvalue %159, %303[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %305 = llvm.insertvalue %191, %304[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %306 = llvm.insertvalue %265, %305[3] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %306 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v2_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.extractvalue %44[3] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.mlir.constant(32 : i64) : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %53 = llvm.mlir.constant(4 : i64) : i64
    %54 = llvm.call @omTensorCreateUntyped(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.mlir.constant(1 : i64) : i64
    %56 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %58 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.bitcast %58 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%54, %55, %57, %59) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %60 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%54, %60) : (!llvm.ptr<i8>, i64) -> ()
    %61 = llvm.call @omTensorGetShape(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.call @omTensorGetStrides(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.mlir.constant(0 : i64) : i64
    %64 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %61[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %62[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.mlir.constant(1 : i64) : i64
    %69 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %61[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %62[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(2 : i64) : i64
    %74 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %61[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %62[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %61[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(0 : i64) : i64
    %84 = llvm.getelementptr %52[%83] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %54, %84 : !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.getelementptr %52[%100] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %101 : !llvm.ptr<ptr<i8>>
    %102 = llvm.mlir.constant(4 : i64) : i64
    %103 = llvm.call @omTensorCreateUntyped(%102) : (i64) -> !llvm.ptr<i8>
    %104 = llvm.mlir.constant(1 : i64) : i64
    %105 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.bitcast %105 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %107 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.bitcast %107 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%103, %104, %106, %108) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %109 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%103, %109) : (!llvm.ptr<i8>, i64) -> ()
    %110 = llvm.call @omTensorGetShape(%103) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %111 = llvm.call @omTensorGetStrides(%103) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.mlir.constant(0 : i64) : i64
    %113 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %110[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %111[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(1 : i64) : i64
    %118 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %110[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %111[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(2 : i64) : i64
    %123 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %110[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %111[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(3 : i64) : i64
    %128 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %110[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %111[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.getelementptr %52[%132] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %103, %133 : !llvm.ptr<ptr<i8>>
    %134 = llvm.mlir.constant(4 : i64) : i64
    %135 = llvm.call @omTensorCreateUntyped(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.mlir.constant(1 : i64) : i64
    %137 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %139 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.bitcast %139 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%135, %136, %138, %140) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %141 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%135, %141) : (!llvm.ptr<i8>, i64) -> ()
    %142 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.mlir.constant(0 : i64) : i64
    %145 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %142[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %143[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %142[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %143[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(2 : i64) : i64
    %155 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %142[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %143[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(3 : i64) : i64
    %160 = llvm.extractvalue %48[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %142[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %48[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %143[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(3 : i64) : i64
    %165 = llvm.getelementptr %52[%164] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %135, %165 : !llvm.ptr<ptr<i8>>
    %166 = llvm.call @omTensorListCreate(%52, %49, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %166 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<267 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<267 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

