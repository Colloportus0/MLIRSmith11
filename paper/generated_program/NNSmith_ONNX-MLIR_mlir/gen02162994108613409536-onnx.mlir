module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.null : !llvm.ptr<i32>
    %50 = llvm.getelementptr %49[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i32> to i64
    %52 = llvm.mlir.constant(16 : index) : i64
    %53 = llvm.add %51, %52  : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %56 = llvm.ptrtoint %55 : !llvm.ptr<i32> to i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.sub %52, %57  : i64
    %59 = llvm.add %56, %58  : i64
    %60 = llvm.urem %59, %52  : i64
    %61 = llvm.sub %59, %60  : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %55, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %44, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %45, %68[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %46, %69[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %47, %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %45, %71[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %46, %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %47, %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%76 : i64)
  ^bb1(%79: i64):  // 2 preds: ^bb0, ^bb11
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%81 : i64)
  ^bb3(%84: i64):  // 2 preds: ^bb2, ^bb10
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%86 : i64)
  ^bb5(%89: i64):  // 2 preds: ^bb4, ^bb9
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%91 : i64)
  ^bb7(%94: i64):  // 2 preds: ^bb6, ^bb8
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %96 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.add %79, %84  : i64
    %98 = llvm.add %97, %89  : i64
    %99 = llvm.add %98, %94  : i64
    %100 = llvm.getelementptr %96[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.load %100 : !llvm.ptr<i32>
    %102 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.add %79, %84  : i64
    %104 = llvm.add %103, %89  : i64
    %105 = llvm.add %104, %94  : i64
    %106 = llvm.getelementptr %102[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %101, %106 : !llvm.ptr<i32>
    %107 = llvm.add %94, %93  : i64
    llvm.br ^bb7(%107 : i64)
  ^bb9:  // pred: ^bb7
    %108 = llvm.add %89, %88  : i64
    llvm.br ^bb5(%108 : i64)
  ^bb10:  // pred: ^bb5
    %109 = llvm.add %84, %83  : i64
    llvm.br ^bb3(%109 : i64)
  ^bb11:  // pred: ^bb3
    %110 = llvm.add %79, %78  : i64
    llvm.br ^bb1(%110 : i64)
  ^bb12:  // pred: ^bb1
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.null : !llvm.ptr<i32>
    %117 = llvm.getelementptr %116[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %118 = llvm.ptrtoint %117 : !llvm.ptr<i32> to i64
    %119 = llvm.mlir.constant(16 : index) : i64
    %120 = llvm.add %118, %119  : i64
    %121 = llvm.call @malloc(%120) : (i64) -> !llvm.ptr<i8>
    %122 = llvm.bitcast %121 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %123 = llvm.ptrtoint %122 : !llvm.ptr<i32> to i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.sub %119, %124  : i64
    %126 = llvm.add %123, %125  : i64
    %127 = llvm.urem %126, %119  : i64
    %128 = llvm.sub %126, %127  : i64
    %129 = llvm.inttoptr %128 : i64 to !llvm.ptr<i32>
    %130 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %131 = llvm.insertvalue %122, %130[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %129, %131[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %111, %134[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %112, %135[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %113, %136[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %114, %137[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %112, %138[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %113, %139[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %114, %140[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %115, %141[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%143 : i64)
  ^bb13(%146: i64):  // 2 preds: ^bb12, ^bb23
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%148 : i64)
  ^bb15(%151: i64):  // 2 preds: ^bb14, ^bb22
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%153 : i64)
  ^bb17(%156: i64):  // 2 preds: ^bb16, ^bb21
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%158 : i64)
  ^bb19(%161: i64):  // 2 preds: ^bb18, ^bb20
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %163 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.add %146, %151  : i64
    %165 = llvm.add %164, %156  : i64
    %166 = llvm.add %165, %161  : i64
    %167 = llvm.getelementptr %163[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.load %167 : !llvm.ptr<i32>
    %169 = llvm.sub %13, %168  : i32
    %170 = llvm.extractvalue %142[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.add %146, %151  : i64
    %172 = llvm.add %171, %156  : i64
    %173 = llvm.add %172, %161  : i64
    %174 = llvm.getelementptr %170[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %169, %174 : !llvm.ptr<i32>
    %175 = llvm.add %161, %160  : i64
    llvm.br ^bb19(%175 : i64)
  ^bb21:  // pred: ^bb19
    %176 = llvm.add %156, %155  : i64
    llvm.br ^bb17(%176 : i64)
  ^bb22:  // pred: ^bb17
    %177 = llvm.add %151, %150  : i64
    llvm.br ^bb15(%177 : i64)
  ^bb23:  // pred: ^bb15
    %178 = llvm.add %146, %145  : i64
    llvm.br ^bb13(%178 : i64)
  ^bb24:  // pred: ^bb13
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.null : !llvm.ptr<i64>
    %182 = llvm.getelementptr %181[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %183 = llvm.ptrtoint %182 : !llvm.ptr<i64> to i64
    %184 = llvm.mlir.constant(16 : index) : i64
    %185 = llvm.add %183, %184  : i64
    %186 = llvm.call @malloc(%185) : (i64) -> !llvm.ptr<i8>
    %187 = llvm.bitcast %186 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %188 = llvm.ptrtoint %187 : !llvm.ptr<i64> to i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.sub %184, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.urem %191, %184  : i64
    %193 = llvm.sub %191, %192  : i64
    %194 = llvm.inttoptr %193 : i64 to !llvm.ptr<i64>
    %195 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %196 = llvm.insertvalue %187, %195[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %194, %196[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.insertvalue %198, %197[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %179, %199[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %180, %200[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%202 : i64)
  ^bb25(%205: i64):  // 2 preds: ^bb24, ^bb26
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %207 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.getelementptr %207[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %208 : !llvm.ptr<i64>
    %209 = llvm.add %205, %204  : i64
    llvm.br ^bb25(%209 : i64)
  ^bb27:  // pred: ^bb25
    %210 = llvm.mlir.constant(4 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.null : !llvm.ptr<i64>
    %213 = llvm.getelementptr %212[%210] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i64> to i64
    %215 = llvm.mlir.constant(16 : index) : i64
    %216 = llvm.add %214, %215  : i64
    %217 = llvm.call @malloc(%216) : (i64) -> !llvm.ptr<i8>
    %218 = llvm.bitcast %217 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %219 = llvm.ptrtoint %218 : !llvm.ptr<i64> to i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.sub %215, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.urem %222, %215  : i64
    %224 = llvm.sub %222, %223  : i64
    %225 = llvm.inttoptr %224 : i64 to !llvm.ptr<i64>
    %226 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %227 = llvm.insertvalue %218, %226[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.insertvalue %225, %227[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.insertvalue %229, %228[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.insertvalue %210, %230[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %211, %231[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%233 : i64)
  ^bb28(%236: i64):  // 2 preds: ^bb27, ^bb29
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %238 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %240 = llvm.load %239 : !llvm.ptr<i64>
    %241 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %242 = llvm.load %241 : !llvm.ptr<i64>
    %243 = llvm.mul %240, %242  : i64
    %244 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.getelementptr %244[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %243, %245 : !llvm.ptr<i64>
    %246 = llvm.add %236, %235  : i64
    llvm.br ^bb28(%246 : i64)
  ^bb30:  // pred: ^bb28
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.null : !llvm.ptr<i1>
    %250 = llvm.getelementptr %249[%247] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i1> to i64
    %252 = llvm.mlir.constant(16 : index) : i64
    %253 = llvm.add %251, %252  : i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i1> to i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.sub %252, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.urem %259, %252  : i64
    %261 = llvm.sub %259, %260  : i64
    %262 = llvm.inttoptr %261 : i64 to !llvm.ptr<i1>
    %263 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %264 = llvm.insertvalue %255, %263[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %262, %264[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.insertvalue %266, %265[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.insertvalue %247, %267[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.insertvalue %248, %268[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%270 : i64)
  ^bb31(%273: i64):  // 2 preds: ^bb30, ^bb32
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %275 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %277 = llvm.load %276 : !llvm.ptr<i64>
    %278 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.getelementptr %278[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %280 = llvm.load %279 : !llvm.ptr<i64>
    %281 = llvm.icmp "eq" %277, %280 : i64
    %282 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.getelementptr %282[%273] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %281, %283 : !llvm.ptr<i1>
    %284 = llvm.add %273, %272  : i64
    llvm.br ^bb31(%284 : i64)
  ^bb33:  // pred: ^bb31
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.null : !llvm.ptr<i64>
    %288 = llvm.getelementptr %287[%285] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i64> to i64
    %290 = llvm.mlir.constant(16 : index) : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr<i8>
    %293 = llvm.bitcast %292 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i64> to i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.sub %290, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.urem %297, %290  : i64
    %299 = llvm.sub %297, %298  : i64
    %300 = llvm.inttoptr %299 : i64 to !llvm.ptr<i64>
    %301 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %302 = llvm.insertvalue %293, %301[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %300, %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.insertvalue %304, %303[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %285, %305[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.insertvalue %286, %306[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%308 : i64)
  ^bb34(%311: i64):  // 2 preds: ^bb33, ^bb35
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %313 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%311] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %315 = llvm.load %314 : !llvm.ptr<i1>
    %316 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %318 = llvm.load %317 : !llvm.ptr<i64>
    %319 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.getelementptr %319[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %321 = llvm.load %320 : !llvm.ptr<i64>
    %322 = llvm.select %315, %318, %321 : i1, i64
    %323 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.getelementptr %323[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %322, %324 : !llvm.ptr<i64>
    %325 = llvm.add %311, %310  : i64
    llvm.br ^bb34(%325 : i64)
  ^bb36:  // pred: ^bb34
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.null : !llvm.ptr<i32>
    %332 = llvm.getelementptr %331[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %333 = llvm.ptrtoint %332 : !llvm.ptr<i32> to i64
    %334 = llvm.mlir.constant(16 : index) : i64
    %335 = llvm.add %333, %334  : i64
    %336 = llvm.call @malloc(%335) : (i64) -> !llvm.ptr<i8>
    %337 = llvm.bitcast %336 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %338 = llvm.ptrtoint %337 : !llvm.ptr<i32> to i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.sub %334, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.urem %341, %334  : i64
    %343 = llvm.sub %341, %342  : i64
    %344 = llvm.inttoptr %343 : i64 to !llvm.ptr<i32>
    %345 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %346 = llvm.insertvalue %337, %345[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %344, %346[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.insertvalue %348, %347[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %326, %349[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %327, %350[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %328, %351[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %329, %352[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %327, %353[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %328, %354[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %330, %356[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%358 : i64)
  ^bb37(%361: i64):  // 2 preds: ^bb36, ^bb47
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%363 : i64)
  ^bb39(%366: i64):  // 2 preds: ^bb38, ^bb46
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%368 : i64)
  ^bb41(%371: i64):  // 2 preds: ^bb40, ^bb45
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%373 : i64)
  ^bb43(%376: i64):  // 2 preds: ^bb42, ^bb44
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %378 = llvm.extractvalue %142[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.add %14, %14  : i64
    %380 = llvm.add %379, %14  : i64
    %381 = llvm.add %380, %14  : i64
    %382 = llvm.getelementptr %378[%381] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %383 = llvm.load %382 : !llvm.ptr<i32>
    %384 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.add %361, %366  : i64
    %386 = llvm.add %385, %371  : i64
    %387 = llvm.add %386, %376  : i64
    %388 = llvm.getelementptr %384[%387] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %383, %388 : !llvm.ptr<i32>
    %389 = llvm.add %376, %375  : i64
    llvm.br ^bb43(%389 : i64)
  ^bb45:  // pred: ^bb43
    %390 = llvm.add %371, %370  : i64
    llvm.br ^bb41(%390 : i64)
  ^bb46:  // pred: ^bb41
    %391 = llvm.add %366, %365  : i64
    llvm.br ^bb39(%391 : i64)
  ^bb47:  // pred: ^bb39
    %392 = llvm.add %361, %360  : i64
    llvm.br ^bb37(%392 : i64)
  ^bb48:  // pred: ^bb37
    %393 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %394 = llvm.extractvalue %142[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.extractvalue %142[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %394, %393[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.insertvalue %395, %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.insertvalue %398, %397[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.insertvalue %400, %399[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.insertvalue %402, %401[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.insertvalue %404, %403[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.insertvalue %406, %405[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.insertvalue %408, %407[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.insertvalue %410, %409[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %412 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %413 = llvm.insertvalue %357, %412[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %414 = llvm.insertvalue %411, %413[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %414 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

